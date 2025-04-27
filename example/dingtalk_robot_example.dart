import 'package:dingtalk_robot/dingtalk_robot.dart';
import 'package:dingtalk_robot/src/api/models/oapi_robot.dart';
import 'package:logging/logging.dart';

/// https://open-dev.dingtalk.com, Robot Information, Dev management, Receive Address:
/// should be `https://<IP or DOMAIN>:<PORT><SERVER_PREFIX>/receive`

Future<void> main() async {
  Client.config.version = "0.1.0";
  Client.config.appKey = "<AppKey: From https://open-dev.dingtalk.com, Robot Information>";
  Client.config.appSecret = "<AppSecret: From https://open-dev.dingtalk.com, Robot Information>";
  Client.config.serverPrefix = "<ReceiveServerPrefix, eg: /dingtalk/robot>";
  Client.config.port = 8081;
  Client.config.logLevel = Level.INFO; /// Log Level: ALL, FINEST, FINER, FINE, INFO, WARNING, SEVERE, SHOUT

  Client client = await Client().init();

  DingtalkRobotMessageHandler dingtalkRobotMessageHandler = DingtalkRobotMessageHandlerImpl(client: client);

  ReceiveServer receiveServer = ReceiveServer(
    dingtalkRobotMessageHandler: dingtalkRobotMessageHandler,
    appSecret: Client.config.appSecret,
    serverPrefix: Client.config.serverPrefix,
    port: Client.config.port,
  );

  await receiveServer.start();

}

class DingtalkRobotMessageHandlerImpl implements DingtalkRobotMessageHandler {
  Client? client;

  DingtalkRobotMessageHandlerImpl({this.client});

  @override
  Future<void> onAudioMessage(AudioMessage message) async {
    logger.log(LogModule.http, "onAudioMessage", detail: message.toJson().toString());
  }

  @override
  Future<void> onFileMessage(FileMessage message) async {
    logger.log(LogModule.http, "onFileMessage", detail: message.toJson().toString());
  }

  @override
  Future<void> onNotSupportedMessage(BaseMessage message) async {
    logger.log(LogModule.http, "onNotSupportedMessage", detail: message.toJson().toString());
  }

  @override
  Future<void> onPictureMessage(PictureMessage message) async {
    logger.log(LogModule.http, "onPictureMessage", detail: message.toJson().toString());
  }

  @override
  Future<void> onRichTextMessage(RichTextMessage message) async {
    logger.log(LogModule.http, "onRichTextMessage", detail: message.toJson().toString());
  }

  @override
  Future<void> onTextMessage(TextMessage message) async {
    logger.log(LogModule.http, "onTextMessage", detail: "message: " + message.toJson().toString());
    OapiRobotSendRequest oapiRobotSendRequest;
    if(message.senderStaffId != null && message.atUsers != null) { // NOT from debug Group, and from Group At
      oapiRobotSendRequest = OapiRobotSendRequest(msgtype: "text", at: At(atUserIds: ["message.senderStaffId"]), text: Text(content: "@${message.senderStaffId} \n ECHO - ${message.senderNick}: ${message.text.content}"));
    } else {
      oapiRobotSendRequest = OapiRobotSendRequest(msgtype: "text", text: Text(content: "ECHO - ${message.senderNick}: ${message.text.content}"));
    }

    logger.log(LogModule.http, "onTextMessage", detail: "oapiRobotSendRequest: " + oapiRobotSendRequest.toJson().toString());
    OapiRobotSendResponseBody? oapiRobotSendResponseBody = await client?.oapiRobotSend(sessionWebhook: message.sessionWebhook, oapiRobotSendRequest: oapiRobotSendRequest);
    logger.log(LogModule.http, "onTextMessage", detail: "oapiRobotSendResponseBody: ${oapiRobotSendResponseBody?.toJson().toString()}", level: Level.FINEST);
  }

  @override
  Future<void> onVideoMessage(VideoMessage message) async {
    logger.log(LogModule.http, "onAudioMessage", detail: message.toJson().toString());
  }

}