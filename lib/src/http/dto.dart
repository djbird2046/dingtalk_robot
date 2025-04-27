import 'package:json_annotation/json_annotation.dart';

part 'dto.g.dart';

@JsonSerializable()
class Version {
  late String version;

  Version({required this.version});

  factory Version.fromJson(Map<String, dynamic> json) => _$VersionFromJson(json);

  Map<String, dynamic> toJson() => _$VersionToJson(this);
}

class MsgType {
  static const String text = "text";
  static const String richText = "richText";
  static const String picture = "picture";
  static const String audio = "audio";
  static const String video = "video";
  static const String file = "file";
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class BaseMessage {
  final String senderPlatform;
  final String conversationId;
  final List<AtUser>? atUsers;
  final String? chatbotCorpId;
  final String chatbotUserId;
  final String msgId;
  final String senderNick;
  final bool isAdmin;
  final String? senderStaffId;
  final int sessionWebhookExpiredTime;
  final int createAt;
  final String? senderCorpId;
  final String conversationType;
  final String senderId;
  final String? conversationTitle;
  final bool? isInAtList;
  final String sessionWebhook;
  final String robotCode;
  final String msgtype;

  BaseMessage({
    required this.senderPlatform,
    required this.conversationId,
    this.atUsers,
    this.chatbotCorpId,
    required this.chatbotUserId,
    required this.msgId,
    required this.senderNick,
    required this.isAdmin,
    this.senderStaffId,
    required this.sessionWebhookExpiredTime,
    required this.createAt,
    this.senderCorpId,
    required this.conversationType,
    required this.senderId,
    this.conversationTitle,
    this.isInAtList,
    required this.sessionWebhook,
    required this.robotCode,
    required this.msgtype,
  });

  factory BaseMessage.fromJson(Map<String, dynamic> json) => _$BaseMessageFromJson(json);
  Map<String, dynamic> toJson() => _$BaseMessageToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AtUser {
  final String dingtalkId;

  AtUser({required this.dingtalkId});

  factory AtUser.fromJson(Map<String, dynamic> json) => _$AtUserFromJson(json);
  Map<String, dynamic> toJson() => _$AtUserToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class TextMessage extends BaseMessage {
  final TextContent text;

  TextMessage({
    required String super.senderPlatform,
    required String super.conversationId,
    List<AtUser>? super.atUsers,
    String? super.chatbotCorpId,
    required String super.chatbotUserId,
    required String super.msgId,
    required String super.senderNick,
    required bool super.isAdmin,
    String? super.senderStaffId,
    required int super.sessionWebhookExpiredTime,
    required int super.createAt,
    String? super.senderCorpId,
    required String super.conversationType,
    required String super.senderId,
    String? super.conversationTitle,
    bool? super.isInAtList,
    required String super.sessionWebhook,
    required String super.robotCode,
    required String super.msgtype,
    required this.text,
  });

  factory TextMessage.fromJson(Map<String, dynamic> json) => _$TextMessageFromJson(json);
  Map<String, dynamic> toJson() => _$TextMessageToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class TextContent {
  final String content;

  TextContent({required this.content});

  factory TextContent.fromJson(Map<String, dynamic> json) => _$TextContentFromJson(json);
  Map<String, dynamic> toJson() => _$TextContentToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RichTextMessage extends BaseMessage {
  final RichTextContent content;

  RichTextMessage({
    required String super.senderPlatform,
    required String super.conversationId,
    List<AtUser>? super.atUsers,
    String? super.chatbotCorpId,
    required String super.chatbotUserId,
    required String super.msgId,
    required String super.senderNick,
    required bool super.isAdmin,
    String? super.senderStaffId,
    required int super.sessionWebhookExpiredTime,
    required int super.createAt,
    String? super.senderCorpId,
    required String super.conversationType,
    required String super.senderId,
    String? super.conversationTitle,
    bool? super.isInAtList,
    required String super.sessionWebhook,
    required String super.robotCode,
    required String super.msgtype,
    required this.content,
  });

  factory RichTextMessage.fromJson(Map<String, dynamic> json) => _$RichTextMessageFromJson(json);
  Map<String, dynamic> toJson() => _$RichTextMessageToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RichTextContent {
  final List<RichTextObject> richText;

  RichTextContent({required this.richText});

  factory RichTextContent.fromJson(Map<String, dynamic> json) => _$RichTextContentFromJson(json);
  Map<String, dynamic> toJson() => _$RichTextContentToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RichTextObject {
  RichTextObject();

  factory RichTextObject.fromJson(Map<String, dynamic> json) => _$RichTextObjectFromJson(json);
  Map<String, dynamic> toJson() => _$RichTextObjectToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RichTextTextObject extends RichTextObject {
  final String text;

  RichTextTextObject({required this.text});

  factory RichTextTextObject.fromJson(Map<String, dynamic> json) => _$RichTextTextObjectFromJson(json);
  Map<String, dynamic> toJson() => _$RichTextTextObjectToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RichTextPictureObject extends RichTextObject {
  final String type;
  final String downloadCode;

  RichTextPictureObject({required this.type, required this.downloadCode});

  factory RichTextPictureObject.fromJson(Map<String, dynamic> json) => _$RichTextPictureObjectFromJson(json);
  Map<String, dynamic> toJson() => _$RichTextPictureObjectToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PictureMessage extends BaseMessage {
  final PictureContent content;

  PictureMessage({
    required String super.senderPlatform,
    required String super.conversationId,
    List<AtUser>? super.atUsers,
    String? super.chatbotCorpId,
    required String super.chatbotUserId,
    required String super.msgId,
    required String super.senderNick,
    required bool super.isAdmin,
    String? super.senderStaffId,
    required int super.sessionWebhookExpiredTime,
    required int super.createAt,
    String? super.senderCorpId,
    required String super.conversationType,
    required String super.senderId,
    String? super.conversationTitle,
    bool? super.isInAtList,
    required String super.sessionWebhook,
    required String super.robotCode,
    required String super.msgtype,
    required this.content,
  });

  factory PictureMessage.fromJson(Map<String, dynamic> json) => _$PictureMessageFromJson(json);
  Map<String, dynamic> toJson() => _$PictureMessageToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PictureContent {
  final String downloadCode;

  PictureContent({required this.downloadCode});

  factory PictureContent.fromJson(Map<String, dynamic> json) => _$PictureContentFromJson(json);
  Map<String, dynamic> toJson() => _$PictureContentToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AudioMessage extends BaseMessage {
  final AudioContent content;

  AudioMessage({
    required String super.senderPlatform,
    required String super.conversationId,
    List<AtUser>? super.atUsers,
    String? super.chatbotCorpId,
    required String super.chatbotUserId,
    required String super.msgId,
    required String super.senderNick,
    required bool super.isAdmin,
    String? super.senderStaffId,
    required int super.sessionWebhookExpiredTime,
    required int super.createAt,
    String? super.senderCorpId,
    required String super.conversationType,
    required String super.senderId,
    String? super.conversationTitle,
    bool? super.isInAtList,
    required String super.sessionWebhook,
    required String super.robotCode,
    required String super.msgtype,
    required this.content,
  });

  factory AudioMessage.fromJson(Map<String, dynamic> json) => _$AudioMessageFromJson(json);
  Map<String, dynamic> toJson() => _$AudioMessageToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AudioContent {
  final int duration;
  final int downloadCode;
  final int recognition;

  AudioContent({required this.duration, required this.downloadCode, required this.recognition});

  factory AudioContent.fromJson(Map<String, dynamic> json) => _$AudioContentFromJson(json);
  Map<String, dynamic> toJson() => _$AudioContentToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class VideoMessage extends BaseMessage {
  final VideoContent content;

  VideoMessage({
    required String super.senderPlatform,
    required String super.conversationId,
    List<AtUser>? super.atUsers,
    String? super.chatbotCorpId,
    required String super.chatbotUserId,
    required String super.msgId,
    required String super.senderNick,
    required bool super.isAdmin,
    String? super.senderStaffId,
    required int super.sessionWebhookExpiredTime,
    required int super.createAt,
    String? super.senderCorpId,
    required String super.conversationType,
    required String super.senderId,
    String? super.conversationTitle,
    bool? super.isInAtList,
    required String super.sessionWebhook,
    required String super.robotCode,
    required String super.msgtype,
    required this.content,
  });

  factory VideoMessage.fromJson(Map<String, dynamic> json) => _$VideoMessageFromJson(json);
  Map<String, dynamic> toJson() => _$VideoMessageToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class VideoContent {
  final int duration;
  final int downloadCode;
  final int videoType;

  VideoContent({required this.duration, required this.downloadCode, required this.videoType});

  factory VideoContent.fromJson(Map<String, dynamic> json) => _$VideoContentFromJson(json);
  Map<String, dynamic> toJson() => _$VideoContentToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FileMessage extends BaseMessage {
  final FileContent content;

  FileMessage({
    required String super.senderPlatform,
    required String super.conversationId,
    List<AtUser>? super.atUsers,
    String? super.chatbotCorpId,
    required String super.chatbotUserId,
    required String super.msgId,
    required String super.senderNick,
    required bool super.isAdmin,
    String? super.senderStaffId,
    required int super.sessionWebhookExpiredTime,
    required int super.createAt,
    String? super.senderCorpId,
    required String super.conversationType,
    required String super.senderId,
    String? super.conversationTitle,
    bool? super.isInAtList,
    required String super.sessionWebhook,
    required String super.robotCode,
    required String super.msgtype,
    required this.content,
  });

  factory FileMessage.fromJson(Map<String, dynamic> json) => _$FileMessageFromJson(json);
  Map<String, dynamic> toJson() => _$FileMessageToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FileContent {
  final int downloadCode;
  final int fileName;

  FileContent({required this.downloadCode, required this.fileName});

  factory FileContent.fromJson(Map<String, dynamic> json) => _$FileContentFromJson(json);
  Map<String, dynamic> toJson() => _$FileContentToJson(this);
}