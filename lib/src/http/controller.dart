import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:logging/logging.dart';
import 'package:shelf/shelf.dart';
import '../client.dart';
import 'dingtalk_robot_message_handler.dart';
import 'dto.dart';
import '../utils/logger.dart';

class Controller {
  final Map<String, String> jsonHeaders = {HttpHeaders.contentTypeHeader: 'application/xml', HttpHeaders.cacheControlHeader: 'no-cache', HttpHeaders.connectionHeader: 'keep-alive',};
  DingtalkRobotMessageHandler dingtalkRobotMessageHandler;

  Controller(this.dingtalkRobotMessageHandler);

  Future<Response> getVersion(Request request) async {
    logger.log(LogModule.http, "Request getVersion");
    Version versionDto = Version(version: Client.config.version);
    logger.log(LogModule.http, "Response getVersion", detail: jsonEncode(versionDto.toJson()));
    return Response.ok(jsonEncode(versionDto.toJson()), headers: jsonHeaders);
  }

  // Response checkSignature(Request request) {
  //   final query = request.requestedUri.queryParameters;
  //
  //   String token = config.wechatOfficialAccount.wechatToken;
  //   String signature = query["signature"] ?? "";
  //   String timestamp = query["timestamp"] ?? "";
  //   String nonce = query["nonce"] ?? "";
  //
  //   final List<String> tmpArr = [token, timestamp, nonce]..sort();
  //   final String tmpStr = sha1.convert(utf8.encode(tmpArr.join())).toString();
  //
  //   if (tmpStr != signature) {
  //     return Response.forbidden('signature not valid');
  //   }
  //
  //   final echostr = query['echostr'];
  //   if (echostr != null) {
  //     return Response.ok(echostr);
  //   }
  //
  //   return Response.ok('success');
  // }

  Future<Response> receive(Request request) async {
    String payload = await request.readAsString();
    Map<String, dynamic> json = jsonDecode(payload);
    try {
      logger.log(LogModule.http, "Request receive", detail: payload, level: Level.FINEST);
      BaseMessage baseMessage = BaseMessage.fromJson(json);
      if(baseMessage.msgtype == MsgType.text) {
        TextMessage message = TextMessage.fromJson(json);
        await dingtalkRobotMessageHandler.onTextMessage(message);
        return Response.ok("ok", headers: jsonHeaders);
      } else if(baseMessage.msgtype == MsgType.richText) {
        RichTextMessage message = RichTextMessage.fromJson(json);
        await dingtalkRobotMessageHandler.onRichTextMessage(message);
        return Response.ok("ok", headers: jsonHeaders);
      } else if(baseMessage.msgtype == MsgType.picture) {
        PictureMessage message = PictureMessage.fromJson(json);
        await dingtalkRobotMessageHandler.onPictureMessage(message);
        return Response.ok("ok", headers: jsonHeaders);
      } else if(baseMessage.msgtype == MsgType.audio) {
        AudioMessage message = AudioMessage.fromJson(json);
        await dingtalkRobotMessageHandler.onAudioMessage(message);
        return Response.ok("ok", headers: jsonHeaders);
      } else if(baseMessage.msgtype == MsgType.video) {
        VideoMessage message = VideoMessage.fromJson(json);
        await dingtalkRobotMessageHandler.onVideoMessage(message);
        return Response.ok("ok", headers: jsonHeaders);
      } else if(baseMessage.msgtype == MsgType.file) {
        FileMessage message = FileMessage.fromJson(json);
        await dingtalkRobotMessageHandler.onFileMessage(message);
        return Response.ok("ok", headers: jsonHeaders);
      } else {
        await dingtalkRobotMessageHandler.onNotSupportedMessage(baseMessage);
        return Response.ok("unsupported type: ${baseMessage.msgtype}", headers: jsonHeaders);
      }
    } on FormatException catch (e) {
      logger.log(LogModule.http, "Response receive FormatException: ${e.toString()}", detail: payload, level: Level.WARNING);
      return Response.badRequest(body: e.toString());
    } catch (e) {
      logger.log(LogModule.http, "Response receive Exception: ${e.toString()}", detail: payload, level: Level.WARNING);
      return Response.internalServerError(body: e.toString());
    }
  }
}
