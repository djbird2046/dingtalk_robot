import 'dart:convert';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:logging/logging.dart';
import 'package:shelf/shelf.dart';
import '../utils/logger.dart';

/// Check Dingtalk request header
Middleware checkAuthorization(String appSecret) {
  return (Handler innerHandler) {
    return (Request request) async {
      String? timestamp = request.headers["timestamp"];
      String? sign = request.headers["sign"];

      if(timestamp == null || sign == null) {
        return Response.unauthorized('Please check required headers: timestamp, token, sign');
      }

      String stringToSign = timestamp + "\n" + appSecret;

      Uint8List key = utf8.encode(appSecret);
      Hmac hmac = Hmac(sha256, key);
      Digest digest = hmac.convert(utf8.encode(stringToSign));
      String digestString = base64.encode(digest.bytes);

      if (sign != digestString) {
        return Response.unauthorized('Invalid or missing authorization token');
      }

      return innerHandler(request);
    };
  };
}

Middleware logRequest() {
  return (Handler innerHandler) {
    return (Request request) async {
      String method = request.method;
      String uri = request.requestedUri.toString();
      String body = await request.readAsString();
      logger.log(LogModule.http, "logRequest", detail: "[$method] $uri $body", level: Level.FINE);
      Request newRequest = request.change(body: Stream.value(utf8.encode(body)));
      return innerHandler(newRequest);
    };
  };
}
