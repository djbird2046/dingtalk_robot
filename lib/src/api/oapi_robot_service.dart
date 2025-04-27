import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'models/oapi_robot.dart';

class OapiRobotService {

  Future<OapiRobotSendResponseBody> oapiRobotSend({required String sessionWebhook, required OapiRobotSendRequest oapiRobotSendRequest}) async {
    Uri url = Uri.parse(sessionWebhook);
    http.Response response = await http.post(
      url,
      headers: {'Content-Type': 'application/json',},
      body: json.encode(oapiRobotSendRequest.toJson()),
    );
    if (response.statusCode == 200) {
      return OapiRobotSendResponseBody.fromJson(json.decode(response.body));
    } else {
      throw HttpException('Failed to send request `$sessionWebhook`: ${response.statusCode} ${response.reasonPhrase}');
    }
  }
}