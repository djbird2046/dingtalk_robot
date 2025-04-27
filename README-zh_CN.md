# 钉钉企业机器人SDK for dart

[English](README-zh_CN.md) · 中文

dart版本的钉钉企业机器人SDK（非官方）

## 功能

- [机器人接收消息](https://open.dingtalk.com/document/orgapp/receive-message)
- [机器人Webhook发送消息](https://open.dingtalk.com/document/orgapp/robot-reply-and-send-messages#410bced0577fq)
- [机器人发送消息](https://open.dingtalk.com/document/orgapp/robot-overview#e744a9d0adhpm)

### 1. 机器人接收消息

- 实现：DingtalkRobotMessageHandler接口，包括如下接口方法

| 接口名称    | 方法                    | 说明 |
|---------|-----------------------|----|
| 接收文本消息  | onTextMessage         |    |
| 接收富文本消息 | onRichTextMessage     |    |
| 接收图片消息  | onPictureMessage      |    |
| 接收语音消息  | onAudioMessage        |    |
| 接收视频消息  | onVideoMessage        |    |
| 接收文件消息  | onFileMessage         |    |
| 接收未支持消息 | onNotSupportedMessage |    |

### 2. 机器人Webhook发送消息

- Webhook发送消息，用于在上述接收到消息后，消息中具备`sessionWebhook`字段，可以往这个字段对应的链接发送回复消息
- 使用此方法回复消息，则**无需**使用[机器人发送消息](#3-机器人发送消息)的接口进行发送，从而更简便地处理“回复消息”场景

| 接口名称              | 方法            | 说明 |
|-------------------|---------------|----|
| 通过 Webhook 方式发送消息 | oapiRobotSend |    |

### 3. 机器人发送消息

| 接口名称                 | 方法                          | 说明 |
|----------------------|-----------------------------|----|
| 获取AccessToken        | getAccessToken              |    |
| 批量查询人与机器人会话机器人消息是否已读 | batchOTOQuery               |    |
| 批量撤回群聊机器人消息          | batchRecallGroup            |    |
| 批量撤回人与机器人会话中机器人消息    | batchRecallOTO              |    |
| 批量撤回人与人会话中机器人消息      | batchRecallPrivateChat      |    |
| 批量发送人与机器人会话中机器人消息    | batchSendOTO                |    |
| 清空单聊机器人快捷入口          | clearRobotPlugin            |    |
| 执行机器人的AI技能           | executeRobotAiSkill         |    |
| 查询群内的机器人列表           | getBotListInGroup           |    |
| 查询企业机器人群聊消息用户已读状态    | orgGroupQuery               |    |
| 企业机器人撤回内部群消息         | orgGroupRecall              |    |
| 机器人发送群聊消息            | orgGroupSend                |    |
| 查询人与人会话中机器人已读消息      | batchOTOQuery               |    |
| 人与人会话中机器人发送普通消息      | privateChatSend             |    |
| 获取机器人所在群信息           | queryBotInstanceInGroupInfo |    |
| 查询单聊机器人快捷入口          | queryRobotPlugin            |    |
| 获取机器人消息中文件下载链接       | robotMessageFileDownload    |    |
| 撤回已经发送的DING消息        | robotRecallDing             |    |
| 发送DING消息             | robotMessageFileDownload    |    |
| 机器人发送DING消息          | sendRobotDingMessage        |    |
| 设置单聊机器人快捷入口          | setRobotPlugin              |    |
| 更新安装到组织的机器人信息        | updateInstalledRobot        |    |

## 使用

### 1. 预先准备

1.  在钉钉开放平台，`应用开发` > `企业内部应用` > `机器人`，`创建应用` 或 编辑已有机器人
2. `基础信息` > `应用信息`，获取`AppKey`和`AppSecret`
3. `基础信息` > `开发管理`
   - `服务器出口IP` 中填入 你的公网服务器IP，例如："12.34.56.78"
   - `消息接收地址` 中填入你的服务器地址，例如："https://mydomain.com/dingtalk/robot/receive"
4. `权限管理` > `机器人` ，确保具有 `qyapi_robot_sendmsg` 权限

### 2. 例子

- 例子可见 /example/dingtalk_robot_example.dart
- 例子包括了：
  - 机器人接收消息
  - 从 `onTextMessage` 接口中接收的信息，使用机器人Webhook发送消息，回复发送人

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
```

## 其他
- 本项目是基于钉钉官方OpenAPI HTTP接口进行封装，默认`baseUrl`为 https://api.dingtalk.com/v1.0
  - 如需变更，可以使用 `Client.config.baseUrl` 进行变更