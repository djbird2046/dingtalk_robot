// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oapi_robot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OapiRobotSendRequest _$OapiRobotSendRequestFromJson(
        Map<String, dynamic> json) =>
    OapiRobotSendRequest(
      actionCard: json['actionCard'] == null
          ? null
          : ActionCard.fromJson(json['actionCard'] as Map<String, dynamic>),
      at: json['at'] == null
          ? null
          : At.fromJson(json['at'] as Map<String, dynamic>),
      feedCard: json['feedCard'] as String?,
      link: json['link'] == null
          ? null
          : TextLink.fromJson(json['link'] as Map<String, dynamic>),
      markdown: json['markdown'] == null
          ? null
          : Markdown.fromJson(json['markdown'] as Map<String, dynamic>),
      msgtype: json['msgtype'] as String,
      text: json['text'] == null
          ? null
          : Text.fromJson(json['text'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OapiRobotSendRequestToJson(
        OapiRobotSendRequest instance) =>
    <String, dynamic>{
      if (instance.at?.toJson() case final value?) 'at': value,
      'msgtype': instance.msgtype,
      if (instance.text?.toJson() case final value?) 'text': value,
      if (instance.link?.toJson() case final value?) 'link': value,
      if (instance.markdown?.toJson() case final value?) 'markdown': value,
      if (instance.actionCard?.toJson() case final value?) 'actionCard': value,
      if (instance.feedCard case final value?) 'feedCard': value,
    };

At _$AtFromJson(Map<String, dynamic> json) => At(
      atMobiles: (json['atMobiles'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      atUserIds: (json['atUserIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isAtAll: json['isAtAll'] as String?,
    );

Map<String, dynamic> _$AtToJson(At instance) => <String, dynamic>{
      if (instance.atMobiles case final value?) 'atMobiles': value,
      if (instance.atUserIds case final value?) 'atUserIds': value,
      if (instance.isAtAll case final value?) 'isAtAll': value,
    };

Text _$TextFromJson(Map<String, dynamic> json) => Text(
      content: json['content'] as String,
    );

Map<String, dynamic> _$TextToJson(Text instance) => <String, dynamic>{
      'content': instance.content,
    };

Link _$LinkFromJson(Map<String, dynamic> json) => Link(
      messageUrl: json['messageUrl'] as String,
      picUrl: json['picUrl'] as String?,
      title: json['title'] as String,
    );

Map<String, dynamic> _$LinkToJson(Link instance) => <String, dynamic>{
      'messageUrl': instance.messageUrl,
      if (instance.picUrl case final value?) 'picUrl': value,
      'title': instance.title,
    };

TextLink _$TextLinkFromJson(Map<String, dynamic> json) => TextLink(
      messageUrl: json['messageUrl'] as String,
      picUrl: json['picUrl'] as String?,
      text: json['text'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$TextLinkToJson(TextLink instance) => <String, dynamic>{
      'messageUrl': instance.messageUrl,
      if (instance.picUrl case final value?) 'picUrl': value,
      'title': instance.title,
      'text': instance.text,
    };

Markdown _$MarkdownFromJson(Map<String, dynamic> json) => Markdown(
      text: json['text'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$MarkdownToJson(Markdown instance) => <String, dynamic>{
      'text': instance.text,
      'title': instance.title,
    };

ActionCard _$ActionCardFromJson(Map<String, dynamic> json) => ActionCard(
      btnOrientation: json['btnOrientation'] as String?,
      btns: (json['btns'] as List<dynamic>?)
          ?.map((e) => Btns.fromJson(e as Map<String, dynamic>))
          .toList(),
      singleTitle: json['singleTitle'] as String?,
      singleURL: json['singleURL'] as String?,
      text: json['text'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$ActionCardToJson(ActionCard instance) =>
    <String, dynamic>{
      if (instance.btnOrientation case final value?) 'btnOrientation': value,
      if (instance.btns?.map((e) => e.toJson()).toList() case final value?)
        'btns': value,
      if (instance.singleTitle case final value?) 'singleTitle': value,
      if (instance.singleURL case final value?) 'singleURL': value,
      'text': instance.text,
      'title': instance.title,
    };

Btns _$BtnsFromJson(Map<String, dynamic> json) => Btns(
      actionURL: json['actionURL'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$BtnsToJson(Btns instance) => <String, dynamic>{
      'actionURL': instance.actionURL,
      'title': instance.title,
    };

FeedCard _$FeedCardFromJson(Map<String, dynamic> json) => FeedCard(
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FeedCardToJson(FeedCard instance) => <String, dynamic>{
      if (instance.links?.map((e) => e.toJson()).toList() case final value?)
        'links': value,
    };

OapiRobotSendResponseBody _$OapiRobotSendResponseBodyFromJson(
        Map<String, dynamic> json) =>
    OapiRobotSendResponseBody(
      errcode: (json['errcode'] as num?)?.toInt(),
      errmsg: json['errmsg'] as String?,
    );

Map<String, dynamic> _$OapiRobotSendResponseBodyToJson(
        OapiRobotSendResponseBody instance) =>
    <String, dynamic>{
      if (instance.errcode case final value?) 'errcode': value,
      if (instance.errmsg case final value?) 'errmsg': value,
    };
