import 'package:json_annotation/json_annotation.dart';

part 'robot.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class GetAccessTokenRequest {
  String appKey;
  String appSecret;

  GetAccessTokenRequest({required this.appKey, required this.appSecret,});

  factory GetAccessTokenRequest.fromJson(Map<String, dynamic> json) => _$GetAccessTokenRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetAccessTokenRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class GetAccessTokenResponseBody {
  String accessToken;
  int expireIn;

  GetAccessTokenResponseBody({required this.accessToken, required this.expireIn,});

  factory GetAccessTokenResponseBody.fromJson(Map<String, dynamic> json) => _$GetAccessTokenResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GetAccessTokenResponseBodyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class BatchOTOQueryRequest {
  String processQueryKey;
  String robotCode;

  BatchOTOQueryRequest({
    required this.processQueryKey,
    required this.robotCode,
  });

  factory BatchOTOQueryRequest.fromJson(Map<String, dynamic> json) => _$BatchOTOQueryRequestFromJson(json);

  Map<String, dynamic> toJson() => _$BatchOTOQueryRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class BatchOTOQueryResponseBody {
  List<BatchOTOQueryResponseBodyMessageReadInfoList> messageReadInfoList;
  String sendStatus;

  BatchOTOQueryResponseBody({
    required this.messageReadInfoList,
    required this.sendStatus,
  });

  factory BatchOTOQueryResponseBody.fromJson(Map<String, dynamic> json) => _$BatchOTOQueryResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$BatchOTOQueryResponseBodyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class BatchOTOQueryResponseBodyMessageReadInfoList {
  String name;
  String readStatus;
  int readTimestamp;
  String userId;

  BatchOTOQueryResponseBodyMessageReadInfoList({
    required this.name,
    required this.readStatus,
    required this.readTimestamp,
    required this.userId,
  });

  factory BatchOTOQueryResponseBodyMessageReadInfoList.fromJson(Map<String, dynamic> json) => _$BatchOTOQueryResponseBodyMessageReadInfoListFromJson(json);

  Map<String, dynamic> toJson() => _$BatchOTOQueryResponseBodyMessageReadInfoListToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class BatchRecallGroupRequest {
  String chatbotId;
  String openConversationId;
  List<String>? processQueryKeys;

  BatchRecallGroupRequest({
    required this.chatbotId,
    required this.openConversationId,
    required this.processQueryKeys,
  });

  factory BatchRecallGroupRequest.fromJson(Map<String, dynamic> json) => _$BatchRecallGroupRequestFromJson(json);

  Map<String, dynamic> toJson() => _$BatchRecallGroupRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class BatchRecallGroupResponseBody {
  Map<String, String> failedResult;
  List<String> successResult;

  BatchRecallGroupResponseBody({
    required this.failedResult,
    required this.successResult,
  });

  factory BatchRecallGroupResponseBody.fromJson(Map<String, dynamic> json) => _$BatchRecallGroupResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$BatchRecallGroupResponseBodyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class BatchRecallOTORequest {
  final List<String> processQueryKeys;
  final String robotCode;

  const BatchRecallOTORequest({
    required this.processQueryKeys,
    required this.robotCode,
  });

  factory BatchRecallOTORequest.fromJson(Map<String, dynamic> json) => _$BatchRecallOTORequestFromJson(json);

  Map<String, dynamic> toJson() => _$BatchRecallOTORequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class BatchRecallOTOResponseBody {
  final Map<String, String> failedResult;
  final List<String> successResult;

  const BatchRecallOTOResponseBody({
    required this.failedResult,
    required this.successResult,
  });

  factory BatchRecallOTOResponseBody.fromJson(Map<String, dynamic> json) => _$BatchRecallOTOResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$BatchRecallOTOResponseBodyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class BatchRecallPrivateChatRequest {
  final String openConversationId;
  final List<String> processQueryKeys;
  final String robotCode;

  const BatchRecallPrivateChatRequest({
    required this.openConversationId,
    required this.processQueryKeys,
    required this.robotCode,
  });

  factory BatchRecallPrivateChatRequest.fromJson(Map<String, dynamic> json) => _$BatchRecallPrivateChatRequestFromJson(json);

  Map<String, dynamic> toJson() => _$BatchRecallPrivateChatRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class BatchRecallPrivateChatResponseBody {
  final Map<String, String> failedResult;
  final List<String> successResult;

  const BatchRecallPrivateChatResponseBody({
    required this.failedResult,
    required this.successResult,
  });

  factory BatchRecallPrivateChatResponseBody.fromJson(Map<String, dynamic> json) => _$BatchRecallPrivateChatResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$BatchRecallPrivateChatResponseBodyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class BatchSendOTORequest {
  String msgKey;
  String msgParam;
  String robotCode;
  List<String> userIds;

  BatchSendOTORequest({
    required this.msgKey,
    required this.msgParam,
    required this.robotCode,
    required this.userIds,
  });

  factory BatchSendOTORequest.fromJson(Map<String, dynamic> json) => _$BatchSendOTORequestFromJson(json);

  Map<String, dynamic> toJson() => _$BatchSendOTORequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class BatchSendOTOResponseBody {
  List<String> flowControlledStaffIdList;
  List<String> invalidStaffIdList;
  String? processQueryKey;

  BatchSendOTOResponseBody({
    required this.flowControlledStaffIdList,
    required this.invalidStaffIdList,
    required this.processQueryKey,
  });

  factory BatchSendOTOResponseBody.fromJson(Map<String, dynamic> json) => _$BatchSendOTOResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$BatchSendOTOResponseBodyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ClearRobotPluginRequest {
  final String robotCode;

  const ClearRobotPluginRequest({
    required this.robotCode,
  });

  factory ClearRobotPluginRequest.fromJson(Map<String, dynamic> json) => _$ClearRobotPluginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ClearRobotPluginRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ClearRobotPluginResponseBody {
  final bool result;

  const ClearRobotPluginResponseBody({
    required this.result,
  });

  factory ClearRobotPluginResponseBody.fromJson(Map<String, dynamic> json) => _$ClearRobotPluginResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ClearRobotPluginResponseBodyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ExecuteRobotAiSkillRequest {
  final Map<String, dynamic> context;
  final String input;
  final String robotCode;
  final String skillId;

  const ExecuteRobotAiSkillRequest({
    required this.context,
    required this.input,
    required this.robotCode,
    required this.skillId,
  });

  factory ExecuteRobotAiSkillRequest.fromJson(Map<String, dynamic> json) => _$ExecuteRobotAiSkillRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ExecuteRobotAiSkillRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ExecuteRobotAiSkillResponseBody {
  final String result;
  final String skillExecuteId;

  const ExecuteRobotAiSkillResponseBody({
    required this.result,
    required this.skillExecuteId,
  });

  factory ExecuteRobotAiSkillResponseBody.fromJson(Map<String, dynamic> json) => _$ExecuteRobotAiSkillResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ExecuteRobotAiSkillResponseBodyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class GetBotListInGroupRequest {
  final String openConversationId;

  const GetBotListInGroupRequest({
    required this.openConversationId,
  });

  factory GetBotListInGroupRequest.fromJson(Map<String, dynamic> json) => _$GetBotListInGroupRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetBotListInGroupRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class GetBotListInGroupResponseBody {
  final List<ChatbotInstanceVO> chatbotInstanceVOList;

  const GetBotListInGroupResponseBody({
    required this.chatbotInstanceVOList,
  });

  factory GetBotListInGroupResponseBody.fromJson(Map<String, dynamic> json) => _$GetBotListInGroupResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GetBotListInGroupResponseBodyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatbotInstanceVO {
  final String downloadIconURL;
  final String name;
  final int openRobotType;
  final String robotCode;

  const ChatbotInstanceVO({
    required this.downloadIconURL,
    required this.name,
    required this.openRobotType,
    required this.robotCode,
  });

  factory ChatbotInstanceVO.fromJson(Map<String, dynamic> json) => _$ChatbotInstanceVOFromJson(json);

  Map<String, dynamic> toJson() => _$ChatbotInstanceVOToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ManageSingleChatRobotStatusRequest {
  final String robotCode;
  final String status;

  const ManageSingleChatRobotStatusRequest({
    required this.robotCode,
    required this.status,
  });

  factory ManageSingleChatRobotStatusRequest.fromJson(Map<String, dynamic> json) => _$ManageSingleChatRobotStatusRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ManageSingleChatRobotStatusRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ManageSingleChatRobotStatusResponseBody {
  final bool result;

  const ManageSingleChatRobotStatusResponseBody({
    required this.result,
  });

  factory ManageSingleChatRobotStatusResponseBody.fromJson(Map<String, dynamic> json) => _$ManageSingleChatRobotStatusResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ManageSingleChatRobotStatusResponseBodyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class OrgGroupQueryRequest {
  final int? maxResults;
  final String? nextToken;
  final String? openConversationId;
  final String processQueryKey;
  final String? robotCode;
  final String? token;

  const OrgGroupQueryRequest({
    this.maxResults,
    this.nextToken,
    this.openConversationId,
    required this.processQueryKey,
    this.robotCode,
    this.token,
  });

  factory OrgGroupQueryRequest.fromJson(Map<String, dynamic> json) => _$OrgGroupQueryRequestFromJson(json);

  Map<String, dynamic> toJson() => _$OrgGroupQueryRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class OrgGroupQueryResponseBody {
  final bool? hasMore;
  final String? nextToken;
  final List<String>? readUserIds;
  final String? sendStatus;

  const OrgGroupQueryResponseBody({
    this.hasMore,
    this.nextToken,
    this.readUserIds,
    this.sendStatus,
  });

  factory OrgGroupQueryResponseBody.fromJson(Map<String, dynamic> json) => _$OrgGroupQueryResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$OrgGroupQueryResponseBodyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class OrgGroupRecallRequest {
  final String openConversationId;
  final List<String> processQueryKeys;
  final String robotCode;

  const OrgGroupRecallRequest({
    required this.openConversationId,
    required this.processQueryKeys,
    required this.robotCode,
  });

  factory OrgGroupRecallRequest.fromJson(Map<String, dynamic> json) => _$OrgGroupRecallRequestFromJson(json);

  Map<String, dynamic> toJson() => _$OrgGroupRecallRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class OrgGroupRecallResponseBody {
  final Map<String, String> failedResult;
  final List<String> successResult;

  const OrgGroupRecallResponseBody({
    required this.failedResult,
    required this.successResult,
  });

  factory OrgGroupRecallResponseBody.fromJson(Map<String, dynamic> json) => _$OrgGroupRecallResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$OrgGroupRecallResponseBodyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class OrgGroupSendRequest {
  String coolAppCode;
  String msgKey;
  String msgParam;
  String openConversationId;
  String robotCode;

  OrgGroupSendRequest({
    required this.coolAppCode,
    required this.msgKey,
    required this.msgParam,
    required this.openConversationId,
    required this.robotCode,
  });

  factory OrgGroupSendRequest.fromJson(Map<String, dynamic> json) => _$OrgGroupSendRequestFromJson(json);

  Map<String, dynamic> toJson() => _$OrgGroupSendRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class OrgGroupSendResponseBody {
  String processQueryKey;

  OrgGroupSendResponseBody({required this.processQueryKey,});

  factory OrgGroupSendResponseBody.fromJson(Map<String, dynamic> json) => _$OrgGroupSendResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$OrgGroupSendResponseBodyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PrivateChatQueryRequest {
  final int? maxResults;
  final String? nextToken;
  final String? openConversationId;
  final String processQueryKey;
  final String? robotCode;

  const PrivateChatQueryRequest({
    this.maxResults,
    this.nextToken,
    this.openConversationId,
    required this.processQueryKey,
    this.robotCode,
  });

  factory PrivateChatQueryRequest.fromJson(Map<String, dynamic> json) => _$PrivateChatQueryRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PrivateChatQueryRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PrivateChatQueryResponseBody {
  final bool? hasMore;
  final String? nextToken;
  final List<String>? readUserIds;
  final String? sendStatus;

  const PrivateChatQueryResponseBody({
    this.hasMore,
    this.nextToken,
    this.readUserIds,
    this.sendStatus,
  });

  factory PrivateChatQueryResponseBody.fromJson(Map<String, dynamic> json) => _$PrivateChatQueryResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$PrivateChatQueryResponseBodyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PrivateChatSendRequest {
  String coolAppCode;
  String msgKey;
  String msgParam;
  String openConversationId;
  String robotCode;

  PrivateChatSendRequest({
    required this.coolAppCode,
    required this.msgKey,
    required this.msgParam,
    required this.openConversationId,
    required this.robotCode,
  });

  factory PrivateChatSendRequest.fromJson(Map<String, dynamic> json) => _$PrivateChatSendRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PrivateChatSendRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PrivateChatSendResponseBody {
  String processQueryKey;

  PrivateChatSendResponseBody({required this.processQueryKey,});

  factory PrivateChatSendResponseBody.fromJson(Map<String, dynamic> json) => _$PrivateChatSendResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$PrivateChatSendResponseBodyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class QueryBotInstanceInGroupInfoRequest {
  final int pageNumber;
  final int pageSize;
  final String robotCode;

  const QueryBotInstanceInGroupInfoRequest({
    required this.pageNumber,
    required this.pageSize,
    required this.robotCode,
  });

  factory QueryBotInstanceInGroupInfoRequest.fromJson(Map<String, dynamic> json) => _$QueryBotInstanceInGroupInfoRequestFromJson(json);

  Map<String, dynamic> toJson() => _$QueryBotInstanceInGroupInfoRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class QueryBotInstanceInGroupInfoResponseBody {
  final bool? hasMore;
  final List<String>? openConversationIds;

  const QueryBotInstanceInGroupInfoResponseBody({
    this.hasMore,
    this.openConversationIds,
  });

  factory QueryBotInstanceInGroupInfoResponseBody.fromJson(Map<String, dynamic> json) => _$QueryBotInstanceInGroupInfoResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$QueryBotInstanceInGroupInfoResponseBodyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class QueryRobotPluginRequest {
  final String robotCode;

  const QueryRobotPluginRequest({
    required this.robotCode,
  });

  factory QueryRobotPluginRequest.fromJson(Map<String, dynamic> json) => _$QueryRobotPluginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$QueryRobotPluginRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class QueryRobotPluginResponseBody {
  final List<QueryRobotPluginResponseBodyPluginInfoList>? pluginInfoList;

  const QueryRobotPluginResponseBody({
    this.pluginInfoList,
  });

  factory QueryRobotPluginResponseBody.fromJson(Map<String, dynamic> json) => _$QueryRobotPluginResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$QueryRobotPluginResponseBodyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class QueryRobotPluginResponseBodyPluginInfoList {
  final String? icon;
  final String? mobileUrl;
  final String? name;
  final String? pcUrl;

  const QueryRobotPluginResponseBodyPluginInfoList({
    this.icon,
    this.mobileUrl,
    this.name,
    this.pcUrl,
  });

  factory QueryRobotPluginResponseBodyPluginInfoList.fromJson(Map<String, dynamic> json) => _$QueryRobotPluginResponseBodyPluginInfoListFromJson(json);

  Map<String, dynamic> toJson() => _$QueryRobotPluginResponseBodyPluginInfoListToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RobotMessageFileDownloadRequest {
  final String downloadCode;
  final String robotCode;

  const RobotMessageFileDownloadRequest({
    required this.downloadCode,
    required this.robotCode,
  });

  factory RobotMessageFileDownloadRequest.fromJson(Map<String, dynamic> json) => _$RobotMessageFileDownloadRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RobotMessageFileDownloadRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RobotMessageFileDownloadResponseBody {
  final String downloadUrl;

  const RobotMessageFileDownloadResponseBody({
    required this.downloadUrl,
  });

  factory RobotMessageFileDownloadResponseBody.fromJson(Map<String, dynamic> json) => _$RobotMessageFileDownloadResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$RobotMessageFileDownloadResponseBodyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RobotRecallDingRequest {
  final String openDingId;
  final String robotCode;

  const RobotRecallDingRequest({
    required this.openDingId,
    required this.robotCode,
  });

  factory RobotRecallDingRequest.fromJson(Map<String, dynamic> json) => _$RobotRecallDingRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RobotRecallDingRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RobotRecallDingResponseBody {
  final String? openDingId;

  const RobotRecallDingResponseBody({
    this.openDingId,
  });

  factory RobotRecallDingResponseBody.fromJson(Map<String, dynamic> json) => _$RobotRecallDingResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$RobotRecallDingResponseBodyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RobotSendDingRequest {
  final String content;
  final List<String> receiverUserIdList;
  final int remindType;
  final String robotCode;

  const RobotSendDingRequest({
    required this.content,
    required this.receiverUserIdList,
    required this.remindType,
    required this.robotCode,
  });

  factory RobotSendDingRequest.fromJson(Map<String, dynamic> json) => _$RobotSendDingRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RobotSendDingRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RobotSendDingResponseBody {
  final Map<String, dynamic> failedList;
  final String openDingId;

  const RobotSendDingResponseBody({
    required this.failedList,
    required this.openDingId,
  });

  factory RobotSendDingResponseBody.fromJson(Map<String, dynamic> json) => _$RobotSendDingResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$RobotSendDingResponseBodyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SendRobotDingMessageRequest {
  final Map<String, String> contentParams;
  final String dingTemplateId;
  final String openConversationId;
  final List<String> receiverUserIdList;
  final String robotCode;

  const SendRobotDingMessageRequest({
    required this.contentParams,
    required this.dingTemplateId,
    required this.openConversationId,
    required this.receiverUserIdList,
    required this.robotCode,
  });

  factory SendRobotDingMessageRequest.fromJson(Map<String, dynamic> json) => _$SendRobotDingMessageRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SendRobotDingMessageRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SendRobotDingMessageResponseBody {
  final String dingSendResultId;

  const SendRobotDingMessageResponseBody({
    required this.dingSendResultId,
  });

  factory SendRobotDingMessageResponseBody.fromJson(Map<String, dynamic> json) => _$SendRobotDingMessageResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SendRobotDingMessageResponseBodyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SetRobotPluginRequest {
  final List<SetRobotPluginRequestPluginInfoList>? pluginInfoList;
  final String? robotCode;

  const SetRobotPluginRequest({
    this.pluginInfoList,
    this.robotCode,
  });

  factory SetRobotPluginRequest.fromJson(Map<String, dynamic> json) => _$SetRobotPluginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SetRobotPluginRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SetRobotPluginRequestPluginInfoList {
  final String icon;
  final String? mobileUrl;
  final String name;
  final String? pcUrl;

  const SetRobotPluginRequestPluginInfoList({
    required this.icon,
    this.mobileUrl,
    required this.name,
    this.pcUrl,
  });

  factory SetRobotPluginRequestPluginInfoList.fromJson(Map<String, dynamic> json) => _$SetRobotPluginRequestPluginInfoListFromJson(json);

  Map<String, dynamic> toJson() => _$SetRobotPluginRequestPluginInfoListToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SetRobotPluginResponseBody {
  final bool? result;

  const SetRobotPluginResponseBody({
    this.result,
  });

  factory SetRobotPluginResponseBody.fromJson(Map<String, dynamic> json) => _$SetRobotPluginResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SetRobotPluginResponseBodyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UpdateInstalledRobotRequest {
  final String? brief;
  final String? description;
  final String? icon;
  final String? name;
  final String robotCode;
  final int updateType;

  const UpdateInstalledRobotRequest({
    this.brief,
    this.description,
    this.icon,
    this.name,
    required this.robotCode,
    required this.updateType,
  });

  factory UpdateInstalledRobotRequest.fromJson(Map<String, dynamic> json) => _$UpdateInstalledRobotRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateInstalledRobotRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UpdateInstalledRobotResponseBody {
  final bool? success;

  const UpdateInstalledRobotResponseBody({
    this.success,
  });

  factory UpdateInstalledRobotResponseBody.fromJson(Map<String, dynamic> json) => _$UpdateInstalledRobotResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateInstalledRobotResponseBodyToJson(this);
}