// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Version _$VersionFromJson(Map<String, dynamic> json) => Version(
      version: json['version'] as String,
    );

Map<String, dynamic> _$VersionToJson(Version instance) => <String, dynamic>{
      'version': instance.version,
    };

BaseMessage _$BaseMessageFromJson(Map<String, dynamic> json) => BaseMessage(
      senderPlatform: json['senderPlatform'] as String,
      conversationId: json['conversationId'] as String,
      atUsers: (json['atUsers'] as List<dynamic>?)
          ?.map((e) => AtUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      chatbotCorpId: json['chatbotCorpId'] as String?,
      chatbotUserId: json['chatbotUserId'] as String,
      msgId: json['msgId'] as String,
      senderNick: json['senderNick'] as String,
      isAdmin: json['isAdmin'] as bool,
      senderStaffId: json['senderStaffId'] as String?,
      sessionWebhookExpiredTime:
          (json['sessionWebhookExpiredTime'] as num).toInt(),
      createAt: (json['createAt'] as num).toInt(),
      senderCorpId: json['senderCorpId'] as String?,
      conversationType: json['conversationType'] as String,
      senderId: json['senderId'] as String,
      conversationTitle: json['conversationTitle'] as String?,
      isInAtList: json['isInAtList'] as bool?,
      sessionWebhook: json['sessionWebhook'] as String,
      robotCode: json['robotCode'] as String,
      msgtype: json['msgtype'] as String,
    );

Map<String, dynamic> _$BaseMessageToJson(BaseMessage instance) =>
    <String, dynamic>{
      'senderPlatform': instance.senderPlatform,
      'conversationId': instance.conversationId,
      if (instance.atUsers?.map((e) => e.toJson()).toList() case final value?)
        'atUsers': value,
      if (instance.chatbotCorpId case final value?) 'chatbotCorpId': value,
      'chatbotUserId': instance.chatbotUserId,
      'msgId': instance.msgId,
      'senderNick': instance.senderNick,
      'isAdmin': instance.isAdmin,
      if (instance.senderStaffId case final value?) 'senderStaffId': value,
      'sessionWebhookExpiredTime': instance.sessionWebhookExpiredTime,
      'createAt': instance.createAt,
      if (instance.senderCorpId case final value?) 'senderCorpId': value,
      'conversationType': instance.conversationType,
      'senderId': instance.senderId,
      if (instance.conversationTitle case final value?)
        'conversationTitle': value,
      if (instance.isInAtList case final value?) 'isInAtList': value,
      'sessionWebhook': instance.sessionWebhook,
      'robotCode': instance.robotCode,
      'msgtype': instance.msgtype,
    };

AtUser _$AtUserFromJson(Map<String, dynamic> json) => AtUser(
      dingtalkId: json['dingtalkId'] as String,
    );

Map<String, dynamic> _$AtUserToJson(AtUser instance) => <String, dynamic>{
      'dingtalkId': instance.dingtalkId,
    };

TextMessage _$TextMessageFromJson(Map<String, dynamic> json) => TextMessage(
      senderPlatform: json['senderPlatform'] as String,
      conversationId: json['conversationId'] as String,
      atUsers: (json['atUsers'] as List<dynamic>?)
          ?.map((e) => AtUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      chatbotCorpId: json['chatbotCorpId'] as String?,
      chatbotUserId: json['chatbotUserId'] as String,
      msgId: json['msgId'] as String,
      senderNick: json['senderNick'] as String,
      isAdmin: json['isAdmin'] as bool,
      senderStaffId: json['senderStaffId'] as String?,
      sessionWebhookExpiredTime:
          (json['sessionWebhookExpiredTime'] as num).toInt(),
      createAt: (json['createAt'] as num).toInt(),
      senderCorpId: json['senderCorpId'] as String?,
      conversationType: json['conversationType'] as String,
      senderId: json['senderId'] as String,
      conversationTitle: json['conversationTitle'] as String?,
      isInAtList: json['isInAtList'] as bool?,
      sessionWebhook: json['sessionWebhook'] as String,
      robotCode: json['robotCode'] as String,
      msgtype: json['msgtype'] as String,
      text: TextContent.fromJson(json['text'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TextMessageToJson(TextMessage instance) =>
    <String, dynamic>{
      'senderPlatform': instance.senderPlatform,
      'conversationId': instance.conversationId,
      if (instance.atUsers?.map((e) => e.toJson()).toList() case final value?)
        'atUsers': value,
      if (instance.chatbotCorpId case final value?) 'chatbotCorpId': value,
      'chatbotUserId': instance.chatbotUserId,
      'msgId': instance.msgId,
      'senderNick': instance.senderNick,
      'isAdmin': instance.isAdmin,
      if (instance.senderStaffId case final value?) 'senderStaffId': value,
      'sessionWebhookExpiredTime': instance.sessionWebhookExpiredTime,
      'createAt': instance.createAt,
      if (instance.senderCorpId case final value?) 'senderCorpId': value,
      'conversationType': instance.conversationType,
      'senderId': instance.senderId,
      if (instance.conversationTitle case final value?)
        'conversationTitle': value,
      if (instance.isInAtList case final value?) 'isInAtList': value,
      'sessionWebhook': instance.sessionWebhook,
      'robotCode': instance.robotCode,
      'msgtype': instance.msgtype,
      'text': instance.text.toJson(),
    };

TextContent _$TextContentFromJson(Map<String, dynamic> json) => TextContent(
      content: json['content'] as String,
    );

Map<String, dynamic> _$TextContentToJson(TextContent instance) =>
    <String, dynamic>{
      'content': instance.content,
    };

RichTextMessage _$RichTextMessageFromJson(Map<String, dynamic> json) =>
    RichTextMessage(
      senderPlatform: json['senderPlatform'] as String,
      conversationId: json['conversationId'] as String,
      atUsers: (json['atUsers'] as List<dynamic>?)
          ?.map((e) => AtUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      chatbotCorpId: json['chatbotCorpId'] as String?,
      chatbotUserId: json['chatbotUserId'] as String,
      msgId: json['msgId'] as String,
      senderNick: json['senderNick'] as String,
      isAdmin: json['isAdmin'] as bool,
      senderStaffId: json['senderStaffId'] as String?,
      sessionWebhookExpiredTime:
          (json['sessionWebhookExpiredTime'] as num).toInt(),
      createAt: (json['createAt'] as num).toInt(),
      senderCorpId: json['senderCorpId'] as String?,
      conversationType: json['conversationType'] as String,
      senderId: json['senderId'] as String,
      conversationTitle: json['conversationTitle'] as String?,
      isInAtList: json['isInAtList'] as bool?,
      sessionWebhook: json['sessionWebhook'] as String,
      robotCode: json['robotCode'] as String,
      msgtype: json['msgtype'] as String,
      content:
          RichTextContent.fromJson(json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RichTextMessageToJson(RichTextMessage instance) =>
    <String, dynamic>{
      'senderPlatform': instance.senderPlatform,
      'conversationId': instance.conversationId,
      if (instance.atUsers?.map((e) => e.toJson()).toList() case final value?)
        'atUsers': value,
      if (instance.chatbotCorpId case final value?) 'chatbotCorpId': value,
      'chatbotUserId': instance.chatbotUserId,
      'msgId': instance.msgId,
      'senderNick': instance.senderNick,
      'isAdmin': instance.isAdmin,
      if (instance.senderStaffId case final value?) 'senderStaffId': value,
      'sessionWebhookExpiredTime': instance.sessionWebhookExpiredTime,
      'createAt': instance.createAt,
      if (instance.senderCorpId case final value?) 'senderCorpId': value,
      'conversationType': instance.conversationType,
      'senderId': instance.senderId,
      if (instance.conversationTitle case final value?)
        'conversationTitle': value,
      if (instance.isInAtList case final value?) 'isInAtList': value,
      'sessionWebhook': instance.sessionWebhook,
      'robotCode': instance.robotCode,
      'msgtype': instance.msgtype,
      'content': instance.content.toJson(),
    };

RichTextContent _$RichTextContentFromJson(Map<String, dynamic> json) =>
    RichTextContent(
      richText: (json['richText'] as List<dynamic>)
          .map((e) => RichTextObject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RichTextContentToJson(RichTextContent instance) =>
    <String, dynamic>{
      'richText': instance.richText.map((e) => e.toJson()).toList(),
    };

RichTextObject _$RichTextObjectFromJson(Map<String, dynamic> json) =>
    RichTextObject();

Map<String, dynamic> _$RichTextObjectToJson(RichTextObject instance) =>
    <String, dynamic>{};

RichTextTextObject _$RichTextTextObjectFromJson(Map<String, dynamic> json) =>
    RichTextTextObject(
      text: json['text'] as String,
    );

Map<String, dynamic> _$RichTextTextObjectToJson(RichTextTextObject instance) =>
    <String, dynamic>{
      'text': instance.text,
    };

RichTextPictureObject _$RichTextPictureObjectFromJson(
        Map<String, dynamic> json) =>
    RichTextPictureObject(
      type: json['type'] as String,
      downloadCode: json['downloadCode'] as String,
    );

Map<String, dynamic> _$RichTextPictureObjectToJson(
        RichTextPictureObject instance) =>
    <String, dynamic>{
      'type': instance.type,
      'downloadCode': instance.downloadCode,
    };

PictureMessage _$PictureMessageFromJson(Map<String, dynamic> json) =>
    PictureMessage(
      senderPlatform: json['senderPlatform'] as String,
      conversationId: json['conversationId'] as String,
      atUsers: (json['atUsers'] as List<dynamic>?)
          ?.map((e) => AtUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      chatbotCorpId: json['chatbotCorpId'] as String?,
      chatbotUserId: json['chatbotUserId'] as String,
      msgId: json['msgId'] as String,
      senderNick: json['senderNick'] as String,
      isAdmin: json['isAdmin'] as bool,
      senderStaffId: json['senderStaffId'] as String?,
      sessionWebhookExpiredTime:
          (json['sessionWebhookExpiredTime'] as num).toInt(),
      createAt: (json['createAt'] as num).toInt(),
      senderCorpId: json['senderCorpId'] as String?,
      conversationType: json['conversationType'] as String,
      senderId: json['senderId'] as String,
      conversationTitle: json['conversationTitle'] as String?,
      isInAtList: json['isInAtList'] as bool?,
      sessionWebhook: json['sessionWebhook'] as String,
      robotCode: json['robotCode'] as String,
      msgtype: json['msgtype'] as String,
      content: PictureContent.fromJson(json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PictureMessageToJson(PictureMessage instance) =>
    <String, dynamic>{
      'senderPlatform': instance.senderPlatform,
      'conversationId': instance.conversationId,
      if (instance.atUsers?.map((e) => e.toJson()).toList() case final value?)
        'atUsers': value,
      if (instance.chatbotCorpId case final value?) 'chatbotCorpId': value,
      'chatbotUserId': instance.chatbotUserId,
      'msgId': instance.msgId,
      'senderNick': instance.senderNick,
      'isAdmin': instance.isAdmin,
      if (instance.senderStaffId case final value?) 'senderStaffId': value,
      'sessionWebhookExpiredTime': instance.sessionWebhookExpiredTime,
      'createAt': instance.createAt,
      if (instance.senderCorpId case final value?) 'senderCorpId': value,
      'conversationType': instance.conversationType,
      'senderId': instance.senderId,
      if (instance.conversationTitle case final value?)
        'conversationTitle': value,
      if (instance.isInAtList case final value?) 'isInAtList': value,
      'sessionWebhook': instance.sessionWebhook,
      'robotCode': instance.robotCode,
      'msgtype': instance.msgtype,
      'content': instance.content.toJson(),
    };

PictureContent _$PictureContentFromJson(Map<String, dynamic> json) =>
    PictureContent(
      downloadCode: json['downloadCode'] as String,
    );

Map<String, dynamic> _$PictureContentToJson(PictureContent instance) =>
    <String, dynamic>{
      'downloadCode': instance.downloadCode,
    };

AudioMessage _$AudioMessageFromJson(Map<String, dynamic> json) => AudioMessage(
      senderPlatform: json['senderPlatform'] as String,
      conversationId: json['conversationId'] as String,
      atUsers: (json['atUsers'] as List<dynamic>?)
          ?.map((e) => AtUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      chatbotCorpId: json['chatbotCorpId'] as String?,
      chatbotUserId: json['chatbotUserId'] as String,
      msgId: json['msgId'] as String,
      senderNick: json['senderNick'] as String,
      isAdmin: json['isAdmin'] as bool,
      senderStaffId: json['senderStaffId'] as String?,
      sessionWebhookExpiredTime:
          (json['sessionWebhookExpiredTime'] as num).toInt(),
      createAt: (json['createAt'] as num).toInt(),
      senderCorpId: json['senderCorpId'] as String?,
      conversationType: json['conversationType'] as String,
      senderId: json['senderId'] as String,
      conversationTitle: json['conversationTitle'] as String?,
      isInAtList: json['isInAtList'] as bool?,
      sessionWebhook: json['sessionWebhook'] as String,
      robotCode: json['robotCode'] as String,
      msgtype: json['msgtype'] as String,
      content: AudioContent.fromJson(json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AudioMessageToJson(AudioMessage instance) =>
    <String, dynamic>{
      'senderPlatform': instance.senderPlatform,
      'conversationId': instance.conversationId,
      if (instance.atUsers?.map((e) => e.toJson()).toList() case final value?)
        'atUsers': value,
      if (instance.chatbotCorpId case final value?) 'chatbotCorpId': value,
      'chatbotUserId': instance.chatbotUserId,
      'msgId': instance.msgId,
      'senderNick': instance.senderNick,
      'isAdmin': instance.isAdmin,
      if (instance.senderStaffId case final value?) 'senderStaffId': value,
      'sessionWebhookExpiredTime': instance.sessionWebhookExpiredTime,
      'createAt': instance.createAt,
      if (instance.senderCorpId case final value?) 'senderCorpId': value,
      'conversationType': instance.conversationType,
      'senderId': instance.senderId,
      if (instance.conversationTitle case final value?)
        'conversationTitle': value,
      if (instance.isInAtList case final value?) 'isInAtList': value,
      'sessionWebhook': instance.sessionWebhook,
      'robotCode': instance.robotCode,
      'msgtype': instance.msgtype,
      'content': instance.content.toJson(),
    };

AudioContent _$AudioContentFromJson(Map<String, dynamic> json) => AudioContent(
      duration: (json['duration'] as num).toInt(),
      downloadCode: (json['downloadCode'] as num).toInt(),
      recognition: (json['recognition'] as num).toInt(),
    );

Map<String, dynamic> _$AudioContentToJson(AudioContent instance) =>
    <String, dynamic>{
      'duration': instance.duration,
      'downloadCode': instance.downloadCode,
      'recognition': instance.recognition,
    };

VideoMessage _$VideoMessageFromJson(Map<String, dynamic> json) => VideoMessage(
      senderPlatform: json['senderPlatform'] as String,
      conversationId: json['conversationId'] as String,
      atUsers: (json['atUsers'] as List<dynamic>?)
          ?.map((e) => AtUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      chatbotCorpId: json['chatbotCorpId'] as String?,
      chatbotUserId: json['chatbotUserId'] as String,
      msgId: json['msgId'] as String,
      senderNick: json['senderNick'] as String,
      isAdmin: json['isAdmin'] as bool,
      senderStaffId: json['senderStaffId'] as String?,
      sessionWebhookExpiredTime:
          (json['sessionWebhookExpiredTime'] as num).toInt(),
      createAt: (json['createAt'] as num).toInt(),
      senderCorpId: json['senderCorpId'] as String?,
      conversationType: json['conversationType'] as String,
      senderId: json['senderId'] as String,
      conversationTitle: json['conversationTitle'] as String?,
      isInAtList: json['isInAtList'] as bool?,
      sessionWebhook: json['sessionWebhook'] as String,
      robotCode: json['robotCode'] as String,
      msgtype: json['msgtype'] as String,
      content: VideoContent.fromJson(json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VideoMessageToJson(VideoMessage instance) =>
    <String, dynamic>{
      'senderPlatform': instance.senderPlatform,
      'conversationId': instance.conversationId,
      if (instance.atUsers?.map((e) => e.toJson()).toList() case final value?)
        'atUsers': value,
      if (instance.chatbotCorpId case final value?) 'chatbotCorpId': value,
      'chatbotUserId': instance.chatbotUserId,
      'msgId': instance.msgId,
      'senderNick': instance.senderNick,
      'isAdmin': instance.isAdmin,
      if (instance.senderStaffId case final value?) 'senderStaffId': value,
      'sessionWebhookExpiredTime': instance.sessionWebhookExpiredTime,
      'createAt': instance.createAt,
      if (instance.senderCorpId case final value?) 'senderCorpId': value,
      'conversationType': instance.conversationType,
      'senderId': instance.senderId,
      if (instance.conversationTitle case final value?)
        'conversationTitle': value,
      if (instance.isInAtList case final value?) 'isInAtList': value,
      'sessionWebhook': instance.sessionWebhook,
      'robotCode': instance.robotCode,
      'msgtype': instance.msgtype,
      'content': instance.content.toJson(),
    };

VideoContent _$VideoContentFromJson(Map<String, dynamic> json) => VideoContent(
      duration: (json['duration'] as num).toInt(),
      downloadCode: (json['downloadCode'] as num).toInt(),
      videoType: (json['videoType'] as num).toInt(),
    );

Map<String, dynamic> _$VideoContentToJson(VideoContent instance) =>
    <String, dynamic>{
      'duration': instance.duration,
      'downloadCode': instance.downloadCode,
      'videoType': instance.videoType,
    };

FileMessage _$FileMessageFromJson(Map<String, dynamic> json) => FileMessage(
      senderPlatform: json['senderPlatform'] as String,
      conversationId: json['conversationId'] as String,
      atUsers: (json['atUsers'] as List<dynamic>?)
          ?.map((e) => AtUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      chatbotCorpId: json['chatbotCorpId'] as String?,
      chatbotUserId: json['chatbotUserId'] as String,
      msgId: json['msgId'] as String,
      senderNick: json['senderNick'] as String,
      isAdmin: json['isAdmin'] as bool,
      senderStaffId: json['senderStaffId'] as String?,
      sessionWebhookExpiredTime:
          (json['sessionWebhookExpiredTime'] as num).toInt(),
      createAt: (json['createAt'] as num).toInt(),
      senderCorpId: json['senderCorpId'] as String?,
      conversationType: json['conversationType'] as String,
      senderId: json['senderId'] as String,
      conversationTitle: json['conversationTitle'] as String?,
      isInAtList: json['isInAtList'] as bool?,
      sessionWebhook: json['sessionWebhook'] as String,
      robotCode: json['robotCode'] as String,
      msgtype: json['msgtype'] as String,
      content: FileContent.fromJson(json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FileMessageToJson(FileMessage instance) =>
    <String, dynamic>{
      'senderPlatform': instance.senderPlatform,
      'conversationId': instance.conversationId,
      if (instance.atUsers?.map((e) => e.toJson()).toList() case final value?)
        'atUsers': value,
      if (instance.chatbotCorpId case final value?) 'chatbotCorpId': value,
      'chatbotUserId': instance.chatbotUserId,
      'msgId': instance.msgId,
      'senderNick': instance.senderNick,
      'isAdmin': instance.isAdmin,
      if (instance.senderStaffId case final value?) 'senderStaffId': value,
      'sessionWebhookExpiredTime': instance.sessionWebhookExpiredTime,
      'createAt': instance.createAt,
      if (instance.senderCorpId case final value?) 'senderCorpId': value,
      'conversationType': instance.conversationType,
      'senderId': instance.senderId,
      if (instance.conversationTitle case final value?)
        'conversationTitle': value,
      if (instance.isInAtList case final value?) 'isInAtList': value,
      'sessionWebhook': instance.sessionWebhook,
      'robotCode': instance.robotCode,
      'msgtype': instance.msgtype,
      'content': instance.content.toJson(),
    };

FileContent _$FileContentFromJson(Map<String, dynamic> json) => FileContent(
      downloadCode: (json['downloadCode'] as num).toInt(),
      fileName: (json['fileName'] as num).toInt(),
    );

Map<String, dynamic> _$FileContentToJson(FileContent instance) =>
    <String, dynamic>{
      'downloadCode': instance.downloadCode,
      'fileName': instance.fileName,
    };
