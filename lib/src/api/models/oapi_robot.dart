import 'package:json_annotation/json_annotation.dart';

part 'oapi_robot.g.dart';

/// https://open.dingtalk.com/document/orgapp/robot-message-types-and-data-format

class MsgType {
  static const String text = "text";
  static const String link = "link";
  static const String markdown = "markdown";
  static const String actionCard = "actionCard";
  static const String feedCard = "feedCard";
  static const String empty = "empty";
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class OapiRobotSendRequest {
  final At? at;
  final String msgtype;
  final Text? text;
  final TextLink? link;
  final Markdown? markdown;
  final ActionCard? actionCard;
  final String? feedCard;

  const OapiRobotSendRequest({
    this.actionCard,
    this.at,
    this.feedCard,
    this.link,
    this.markdown,
    required this.msgtype,
    this.text,
  });

  factory OapiRobotSendRequest.fromJson(Map<String, dynamic> json) => _$OapiRobotSendRequestFromJson(json);

  Map<String, dynamic> toJson() => _$OapiRobotSendRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class At {
  final List<String>? atMobiles;
  final List<String>? atUserIds;
  final String? isAtAll;

  const At({
    this.atMobiles,
    this.atUserIds,
    this.isAtAll,
  });

  factory At.fromJson(Map<String, dynamic> json) => _$AtFromJson(json);

  Map<String, dynamic> toJson() => _$AtToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Text {
  final String content;

  const Text({
    required this.content,
  });

  factory Text.fromJson(Map<String, dynamic> json) => _$TextFromJson(json);

  Map<String, dynamic> toJson() => _$TextToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Link {
  final String messageUrl;
  final String? picUrl;
  final String title;

  Link({
    required this.messageUrl,
    this.picUrl,
    required this.title,
  });

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);

  Map<String, dynamic> toJson() => _$LinkToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class TextLink extends Link {
  final String text;

  TextLink({
    required String super.messageUrl,
    String? super.picUrl,
    required this.text,
    required String super.title,
  });

  factory TextLink.fromJson(Map<String, dynamic> json) => _$TextLinkFromJson(json);

  Map<String, dynamic> toJson() => _$TextLinkToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Markdown {
  final String text;
  final String title;

  const Markdown({
    required this.text,
    required this.title,
  });

  factory Markdown.fromJson(Map<String, dynamic> json) => _$MarkdownFromJson(json);

  Map<String, dynamic> toJson() => _$MarkdownToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ActionCard {
  final String? btnOrientation; /// "0": vertical, "1": horizontal
  final List<Btns>? btns;
  final String? singleTitle;
  final String? singleURL;
  final String text;
  final String title;

  const ActionCard({
    this.btnOrientation,
    this.btns,
    this.singleTitle,
    this.singleURL,
    required this.text,
    required this.title,
  });

  factory ActionCard.fromJson(Map<String, dynamic> json) => _$ActionCardFromJson(json);

  Map<String, dynamic> toJson() => _$ActionCardToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Btns {
  final String actionURL;
  final String title;

  const Btns({
    required this.actionURL,
    required this.title,
  });

  factory Btns.fromJson(Map<String, dynamic> json) => _$BtnsFromJson(json);

  Map<String, dynamic> toJson() => _$BtnsToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FeedCard {
  final List<Link>? links;

  const FeedCard({
    this.links,
  });

  factory FeedCard.fromJson(Map<String, dynamic> json) => _$FeedCardFromJson(json);

  Map<String, dynamic> toJson() => _$FeedCardToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class OapiRobotSendResponseBody {
  final int? errcode;
  final String? errmsg;

  const OapiRobotSendResponseBody({
    this.errcode,
    this.errmsg,
  });

  factory OapiRobotSendResponseBody.fromJson(Map<String, dynamic> json) => _$OapiRobotSendResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$OapiRobotSendResponseBodyToJson(this);

  bool get isSuccess => errcode == null || errcode == 0;
}