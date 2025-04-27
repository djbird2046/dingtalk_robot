# Dingtalk Enterprise Robot SDK for Dart

English · [中文](README-zh_CN.md)

Unofficial Dart SDK for Dingtalk Enterprise Robot.

## Features

- [Receive messages from robots](https://open.dingtalk.com/document/orgapp/receive-message)
- [Send messages via robot Webhook](https://open.dingtalk.com/document/orgapp/robot-reply-and-send-messages#410bced0577fq)
- [Send messages through the robot API](https://open.dingtalk.com/document/orgapp/robot-overview#e744a9d0adhpm)

### 1. Receiving Messages

- Implement the `DingtalkRobotMessageHandler` interface, which includes the following methods:

| Interface Name              | Method                | Description |
|-----------------------------|-----------------------|-------------|
| Receive text message        | onTextMessage         |             |
| Receive rich text message   | onRichTextMessage     |             |
| Receive image message       | onPictureMessage      |             |
| Receive audio message       | onAudioMessage        |             |
| Receive video message       | onVideoMessage        |             |
| Receive file message        | onFileMessage         |             |
| Receive unsupported message | onNotSupportedMessage |             |

### 2. Sending Messages via Webhook

- After receiving a message, if the message contains a `sessionWebhook` field, you can send a reply to that URL.
- When using this method, you **do not** need to use the [robot API](#3-sending-messages) separately, making reply scenarios easier to handle.

| Interface Name           | Method        | Description |
|--------------------------|---------------|-------------|
| Send message via Webhook | oapiRobotSend |             |

### 3. Sending Messages via Robot API

| Interface Name                                         | Method                      | Description |
|--------------------------------------------------------|-----------------------------|-------------|
| Get AccessToken                                        | getAccessToken              |             |
| Batch query if robot messages in private chat are read | batchOTOQuery               |             |
| Batch recall robot messages in group chat              | batchRecallGroup            |             |
| Batch recall robot messages in private chat            | batchRecallOTO              |             |
| Batch recall robot messages between individuals        | batchRecallPrivateChat      |             |
| Batch send robot messages in private chat              | batchSendOTO                |             |
| Clear single chat robot shortcut entries               | clearRobotPlugin            |             |
| Execute robot AI skill                                 | executeRobotAiSkill         |             |
| Query robot list in a group                            | getBotListInGroup           |             |
| Query robot message read status in a group             | orgGroupQuery               |             |
| Recall enterprise robot message in internal group      | orgGroupRecall              |             |
| Send robot message to group chat                       | orgGroupSend                |             |
| Query robot message read status in private chats       | batchOTOQuery               |             |
| Send ordinary messages between individuals             | privateChatSend             |             |
| Get group information where the robot is located       | queryBotInstanceInGroupInfo |             |
| Query single chat robot shortcut entries               | queryRobotPlugin            |             |
| Get robot message file download link                   | robotMessageFileDownload    |             |
| Recall DING messages                                   | robotRecallDing             |             |
| Send DING messages                                     | robotMessageFileDownload    |             |
| Send DING messages by robot                            | sendRobotDingMessage        |             |
| Set single chat robot shortcut entries                 | setRobotPlugin              |             |
| Update installed robot information                     | updateInstalledRobot        |             |

## Usage

### 1. Preparation

1. On Dingtalk Open Platform, go to `Application Development` > `Enterprise Internal Application` > `Robot`, then `Create Application` or edit an existing robot.
2. Under `Basic Information` > `App Information`, obtain your `AppKey` and `AppSecret`.
3. Under `Basic Information` > `Development Management`:
    - Fill in your server's public IP under `Server Outbound IP`, e.g., "12.34.56.78"
    - Fill in your server's address under `Message Receiving Address`, e.g., "https://mydomain.com/dingtalk/robot/receive"
4. Under `Permission Management` > `Robot`, ensure the `qyapi_robot_sendmsg` permission is granted.

### 2. Example

- Example code is available at `/example/dingtalk_robot_example.dart`
- The example covers:
    - Receiving robot messages
    - Sending reply messages via the robot Webhook upon receiving text messages

```dart
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
    if (message.senderStaffId != null && message.atUsers != null) { // NOT from debug Group, and from Group At
      oapiRobotSendRequest = OapiRobotSendRequest(
        msgtype: "text",
        at: At(atUserIds: ["message.senderStaffId"]),
        text: Text(content: "@${message.senderStaffId} \n ECHO - ${message.senderNick}: ${message.text.content}"),
      );
    } else {
      oapiRobotSendRequest = OapiRobotSendRequest(
        msgtype: "text",
        text: Text(content: "ECHO - ${message.senderNick}: ${message.text.content}"),
      );
    }

    logger.log(LogModule.http, "onTextMessage", detail: "oapiRobotSendRequest: " + oapiRobotSendRequest.toJson().toString());
    OapiRobotSendResponseBody? oapiRobotSendResponseBody = await client?.oapiRobotSend(
      sessionWebhook: message.sessionWebhook,
      oapiRobotSendRequest: oapiRobotSendRequest,
    );
    logger.log(LogModule.http, "onTextMessage", detail: "oapiRobotSendResponseBody: ${oapiRobotSendResponseBody?.toJson().toString()}", level: Level.FINEST);
  }

  @override
  Future<void> onVideoMessage(VideoMessage message) async {
    logger.log(LogModule.http, "onVideoMessage", detail: message.toJson().toString());
  }
}
```

## Others
- This project wraps Dingtalk's official OpenAPI HTTP interfaces.
- Default `baseUrl` is `https://api.dingtalk.com/v1.0`
    - You can change it using `Client.config.baseUrl` if needed.

