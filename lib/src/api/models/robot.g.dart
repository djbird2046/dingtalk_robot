// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'robot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAccessTokenRequest _$GetAccessTokenRequestFromJson(
        Map<String, dynamic> json) =>
    GetAccessTokenRequest(
      appKey: json['appKey'] as String,
      appSecret: json['appSecret'] as String,
    );

Map<String, dynamic> _$GetAccessTokenRequestToJson(
        GetAccessTokenRequest instance) =>
    <String, dynamic>{
      'appKey': instance.appKey,
      'appSecret': instance.appSecret,
    };

GetAccessTokenResponseBody _$GetAccessTokenResponseBodyFromJson(
        Map<String, dynamic> json) =>
    GetAccessTokenResponseBody(
      accessToken: json['accessToken'] as String,
      expireIn: (json['expireIn'] as num).toInt(),
    );

Map<String, dynamic> _$GetAccessTokenResponseBodyToJson(
        GetAccessTokenResponseBody instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'expireIn': instance.expireIn,
    };

BatchOTOQueryRequest _$BatchOTOQueryRequestFromJson(
        Map<String, dynamic> json) =>
    BatchOTOQueryRequest(
      processQueryKey: json['processQueryKey'] as String,
      robotCode: json['robotCode'] as String,
    );

Map<String, dynamic> _$BatchOTOQueryRequestToJson(
        BatchOTOQueryRequest instance) =>
    <String, dynamic>{
      'processQueryKey': instance.processQueryKey,
      'robotCode': instance.robotCode,
    };

BatchOTOQueryResponseBody _$BatchOTOQueryResponseBodyFromJson(
        Map<String, dynamic> json) =>
    BatchOTOQueryResponseBody(
      messageReadInfoList: (json['messageReadInfoList'] as List<dynamic>)
          .map((e) => BatchOTOQueryResponseBodyMessageReadInfoList.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      sendStatus: json['sendStatus'] as String,
    );

Map<String, dynamic> _$BatchOTOQueryResponseBodyToJson(
        BatchOTOQueryResponseBody instance) =>
    <String, dynamic>{
      'messageReadInfoList':
          instance.messageReadInfoList.map((e) => e.toJson()).toList(),
      'sendStatus': instance.sendStatus,
    };

BatchOTOQueryResponseBodyMessageReadInfoList
    _$BatchOTOQueryResponseBodyMessageReadInfoListFromJson(
            Map<String, dynamic> json) =>
        BatchOTOQueryResponseBodyMessageReadInfoList(
          name: json['name'] as String,
          readStatus: json['readStatus'] as String,
          readTimestamp: (json['readTimestamp'] as num).toInt(),
          userId: json['userId'] as String,
        );

Map<String, dynamic> _$BatchOTOQueryResponseBodyMessageReadInfoListToJson(
        BatchOTOQueryResponseBodyMessageReadInfoList instance) =>
    <String, dynamic>{
      'name': instance.name,
      'readStatus': instance.readStatus,
      'readTimestamp': instance.readTimestamp,
      'userId': instance.userId,
    };

BatchRecallGroupRequest _$BatchRecallGroupRequestFromJson(
        Map<String, dynamic> json) =>
    BatchRecallGroupRequest(
      chatbotId: json['chatbotId'] as String,
      openConversationId: json['openConversationId'] as String,
      processQueryKeys: (json['processQueryKeys'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$BatchRecallGroupRequestToJson(
        BatchRecallGroupRequest instance) =>
    <String, dynamic>{
      'chatbotId': instance.chatbotId,
      'openConversationId': instance.openConversationId,
      if (instance.processQueryKeys case final value?)
        'processQueryKeys': value,
    };

BatchRecallGroupResponseBody _$BatchRecallGroupResponseBodyFromJson(
        Map<String, dynamic> json) =>
    BatchRecallGroupResponseBody(
      failedResult: Map<String, String>.from(json['failedResult'] as Map),
      successResult: (json['successResult'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$BatchRecallGroupResponseBodyToJson(
        BatchRecallGroupResponseBody instance) =>
    <String, dynamic>{
      'failedResult': instance.failedResult,
      'successResult': instance.successResult,
    };

BatchRecallOTORequest _$BatchRecallOTORequestFromJson(
        Map<String, dynamic> json) =>
    BatchRecallOTORequest(
      processQueryKeys: (json['processQueryKeys'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      robotCode: json['robotCode'] as String,
    );

Map<String, dynamic> _$BatchRecallOTORequestToJson(
        BatchRecallOTORequest instance) =>
    <String, dynamic>{
      'processQueryKeys': instance.processQueryKeys,
      'robotCode': instance.robotCode,
    };

BatchRecallOTOResponseBody _$BatchRecallOTOResponseBodyFromJson(
        Map<String, dynamic> json) =>
    BatchRecallOTOResponseBody(
      failedResult: Map<String, String>.from(json['failedResult'] as Map),
      successResult: (json['successResult'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$BatchRecallOTOResponseBodyToJson(
        BatchRecallOTOResponseBody instance) =>
    <String, dynamic>{
      'failedResult': instance.failedResult,
      'successResult': instance.successResult,
    };

BatchRecallPrivateChatRequest _$BatchRecallPrivateChatRequestFromJson(
        Map<String, dynamic> json) =>
    BatchRecallPrivateChatRequest(
      openConversationId: json['openConversationId'] as String,
      processQueryKeys: (json['processQueryKeys'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      robotCode: json['robotCode'] as String,
    );

Map<String, dynamic> _$BatchRecallPrivateChatRequestToJson(
        BatchRecallPrivateChatRequest instance) =>
    <String, dynamic>{
      'openConversationId': instance.openConversationId,
      'processQueryKeys': instance.processQueryKeys,
      'robotCode': instance.robotCode,
    };

BatchRecallPrivateChatResponseBody _$BatchRecallPrivateChatResponseBodyFromJson(
        Map<String, dynamic> json) =>
    BatchRecallPrivateChatResponseBody(
      failedResult: Map<String, String>.from(json['failedResult'] as Map),
      successResult: (json['successResult'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$BatchRecallPrivateChatResponseBodyToJson(
        BatchRecallPrivateChatResponseBody instance) =>
    <String, dynamic>{
      'failedResult': instance.failedResult,
      'successResult': instance.successResult,
    };

BatchSendOTORequest _$BatchSendOTORequestFromJson(Map<String, dynamic> json) =>
    BatchSendOTORequest(
      msgKey: json['msgKey'] as String,
      msgParam: json['msgParam'] as String,
      robotCode: json['robotCode'] as String,
      userIds:
          (json['userIds'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$BatchSendOTORequestToJson(
        BatchSendOTORequest instance) =>
    <String, dynamic>{
      'msgKey': instance.msgKey,
      'msgParam': instance.msgParam,
      'robotCode': instance.robotCode,
      'userIds': instance.userIds,
    };

BatchSendOTOResponseBody _$BatchSendOTOResponseBodyFromJson(
        Map<String, dynamic> json) =>
    BatchSendOTOResponseBody(
      flowControlledStaffIdList:
          (json['flowControlledStaffIdList'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      invalidStaffIdList: (json['invalidStaffIdList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      processQueryKey: json['processQueryKey'] as String?,
    );

Map<String, dynamic> _$BatchSendOTOResponseBodyToJson(
        BatchSendOTOResponseBody instance) =>
    <String, dynamic>{
      'flowControlledStaffIdList': instance.flowControlledStaffIdList,
      'invalidStaffIdList': instance.invalidStaffIdList,
      if (instance.processQueryKey case final value?) 'processQueryKey': value,
    };

ClearRobotPluginRequest _$ClearRobotPluginRequestFromJson(
        Map<String, dynamic> json) =>
    ClearRobotPluginRequest(
      robotCode: json['robotCode'] as String,
    );

Map<String, dynamic> _$ClearRobotPluginRequestToJson(
        ClearRobotPluginRequest instance) =>
    <String, dynamic>{
      'robotCode': instance.robotCode,
    };

ClearRobotPluginResponseBody _$ClearRobotPluginResponseBodyFromJson(
        Map<String, dynamic> json) =>
    ClearRobotPluginResponseBody(
      result: json['result'] as bool,
    );

Map<String, dynamic> _$ClearRobotPluginResponseBodyToJson(
        ClearRobotPluginResponseBody instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

ExecuteRobotAiSkillRequest _$ExecuteRobotAiSkillRequestFromJson(
        Map<String, dynamic> json) =>
    ExecuteRobotAiSkillRequest(
      context: json['context'] as Map<String, dynamic>,
      input: json['input'] as String,
      robotCode: json['robotCode'] as String,
      skillId: json['skillId'] as String,
    );

Map<String, dynamic> _$ExecuteRobotAiSkillRequestToJson(
        ExecuteRobotAiSkillRequest instance) =>
    <String, dynamic>{
      'context': instance.context,
      'input': instance.input,
      'robotCode': instance.robotCode,
      'skillId': instance.skillId,
    };

ExecuteRobotAiSkillResponseBody _$ExecuteRobotAiSkillResponseBodyFromJson(
        Map<String, dynamic> json) =>
    ExecuteRobotAiSkillResponseBody(
      result: json['result'] as String,
      skillExecuteId: json['skillExecuteId'] as String,
    );

Map<String, dynamic> _$ExecuteRobotAiSkillResponseBodyToJson(
        ExecuteRobotAiSkillResponseBody instance) =>
    <String, dynamic>{
      'result': instance.result,
      'skillExecuteId': instance.skillExecuteId,
    };

GetBotListInGroupRequest _$GetBotListInGroupRequestFromJson(
        Map<String, dynamic> json) =>
    GetBotListInGroupRequest(
      openConversationId: json['openConversationId'] as String,
    );

Map<String, dynamic> _$GetBotListInGroupRequestToJson(
        GetBotListInGroupRequest instance) =>
    <String, dynamic>{
      'openConversationId': instance.openConversationId,
    };

GetBotListInGroupResponseBody _$GetBotListInGroupResponseBodyFromJson(
        Map<String, dynamic> json) =>
    GetBotListInGroupResponseBody(
      chatbotInstanceVOList: (json['chatbotInstanceVOList'] as List<dynamic>)
          .map((e) => ChatbotInstanceVO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetBotListInGroupResponseBodyToJson(
        GetBotListInGroupResponseBody instance) =>
    <String, dynamic>{
      'chatbotInstanceVOList':
          instance.chatbotInstanceVOList.map((e) => e.toJson()).toList(),
    };

ChatbotInstanceVO _$ChatbotInstanceVOFromJson(Map<String, dynamic> json) =>
    ChatbotInstanceVO(
      downloadIconURL: json['downloadIconURL'] as String,
      name: json['name'] as String,
      openRobotType: (json['openRobotType'] as num).toInt(),
      robotCode: json['robotCode'] as String,
    );

Map<String, dynamic> _$ChatbotInstanceVOToJson(ChatbotInstanceVO instance) =>
    <String, dynamic>{
      'downloadIconURL': instance.downloadIconURL,
      'name': instance.name,
      'openRobotType': instance.openRobotType,
      'robotCode': instance.robotCode,
    };

ManageSingleChatRobotStatusRequest _$ManageSingleChatRobotStatusRequestFromJson(
        Map<String, dynamic> json) =>
    ManageSingleChatRobotStatusRequest(
      robotCode: json['robotCode'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$ManageSingleChatRobotStatusRequestToJson(
        ManageSingleChatRobotStatusRequest instance) =>
    <String, dynamic>{
      'robotCode': instance.robotCode,
      'status': instance.status,
    };

ManageSingleChatRobotStatusResponseBody
    _$ManageSingleChatRobotStatusResponseBodyFromJson(
            Map<String, dynamic> json) =>
        ManageSingleChatRobotStatusResponseBody(
          result: json['result'] as bool,
        );

Map<String, dynamic> _$ManageSingleChatRobotStatusResponseBodyToJson(
        ManageSingleChatRobotStatusResponseBody instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

OrgGroupQueryRequest _$OrgGroupQueryRequestFromJson(
        Map<String, dynamic> json) =>
    OrgGroupQueryRequest(
      maxResults: (json['maxResults'] as num?)?.toInt(),
      nextToken: json['nextToken'] as String?,
      openConversationId: json['openConversationId'] as String?,
      processQueryKey: json['processQueryKey'] as String,
      robotCode: json['robotCode'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$OrgGroupQueryRequestToJson(
        OrgGroupQueryRequest instance) =>
    <String, dynamic>{
      if (instance.maxResults case final value?) 'maxResults': value,
      if (instance.nextToken case final value?) 'nextToken': value,
      if (instance.openConversationId case final value?)
        'openConversationId': value,
      'processQueryKey': instance.processQueryKey,
      if (instance.robotCode case final value?) 'robotCode': value,
      if (instance.token case final value?) 'token': value,
    };

OrgGroupQueryResponseBody _$OrgGroupQueryResponseBodyFromJson(
        Map<String, dynamic> json) =>
    OrgGroupQueryResponseBody(
      hasMore: json['hasMore'] as bool?,
      nextToken: json['nextToken'] as String?,
      readUserIds: (json['readUserIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      sendStatus: json['sendStatus'] as String?,
    );

Map<String, dynamic> _$OrgGroupQueryResponseBodyToJson(
        OrgGroupQueryResponseBody instance) =>
    <String, dynamic>{
      if (instance.hasMore case final value?) 'hasMore': value,
      if (instance.nextToken case final value?) 'nextToken': value,
      if (instance.readUserIds case final value?) 'readUserIds': value,
      if (instance.sendStatus case final value?) 'sendStatus': value,
    };

OrgGroupRecallRequest _$OrgGroupRecallRequestFromJson(
        Map<String, dynamic> json) =>
    OrgGroupRecallRequest(
      openConversationId: json['openConversationId'] as String,
      processQueryKeys: (json['processQueryKeys'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      robotCode: json['robotCode'] as String,
    );

Map<String, dynamic> _$OrgGroupRecallRequestToJson(
        OrgGroupRecallRequest instance) =>
    <String, dynamic>{
      'openConversationId': instance.openConversationId,
      'processQueryKeys': instance.processQueryKeys,
      'robotCode': instance.robotCode,
    };

OrgGroupRecallResponseBody _$OrgGroupRecallResponseBodyFromJson(
        Map<String, dynamic> json) =>
    OrgGroupRecallResponseBody(
      failedResult: Map<String, String>.from(json['failedResult'] as Map),
      successResult: (json['successResult'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$OrgGroupRecallResponseBodyToJson(
        OrgGroupRecallResponseBody instance) =>
    <String, dynamic>{
      'failedResult': instance.failedResult,
      'successResult': instance.successResult,
    };

OrgGroupSendRequest _$OrgGroupSendRequestFromJson(Map<String, dynamic> json) =>
    OrgGroupSendRequest(
      coolAppCode: json['coolAppCode'] as String,
      msgKey: json['msgKey'] as String,
      msgParam: json['msgParam'] as String,
      openConversationId: json['openConversationId'] as String,
      robotCode: json['robotCode'] as String,
    );

Map<String, dynamic> _$OrgGroupSendRequestToJson(
        OrgGroupSendRequest instance) =>
    <String, dynamic>{
      'coolAppCode': instance.coolAppCode,
      'msgKey': instance.msgKey,
      'msgParam': instance.msgParam,
      'openConversationId': instance.openConversationId,
      'robotCode': instance.robotCode,
    };

OrgGroupSendResponseBody _$OrgGroupSendResponseBodyFromJson(
        Map<String, dynamic> json) =>
    OrgGroupSendResponseBody(
      processQueryKey: json['processQueryKey'] as String,
    );

Map<String, dynamic> _$OrgGroupSendResponseBodyToJson(
        OrgGroupSendResponseBody instance) =>
    <String, dynamic>{
      'processQueryKey': instance.processQueryKey,
    };

PrivateChatQueryRequest _$PrivateChatQueryRequestFromJson(
        Map<String, dynamic> json) =>
    PrivateChatQueryRequest(
      maxResults: (json['maxResults'] as num?)?.toInt(),
      nextToken: json['nextToken'] as String?,
      openConversationId: json['openConversationId'] as String?,
      processQueryKey: json['processQueryKey'] as String,
      robotCode: json['robotCode'] as String?,
    );

Map<String, dynamic> _$PrivateChatQueryRequestToJson(
        PrivateChatQueryRequest instance) =>
    <String, dynamic>{
      if (instance.maxResults case final value?) 'maxResults': value,
      if (instance.nextToken case final value?) 'nextToken': value,
      if (instance.openConversationId case final value?)
        'openConversationId': value,
      'processQueryKey': instance.processQueryKey,
      if (instance.robotCode case final value?) 'robotCode': value,
    };

PrivateChatQueryResponseBody _$PrivateChatQueryResponseBodyFromJson(
        Map<String, dynamic> json) =>
    PrivateChatQueryResponseBody(
      hasMore: json['hasMore'] as bool?,
      nextToken: json['nextToken'] as String?,
      readUserIds: (json['readUserIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      sendStatus: json['sendStatus'] as String?,
    );

Map<String, dynamic> _$PrivateChatQueryResponseBodyToJson(
        PrivateChatQueryResponseBody instance) =>
    <String, dynamic>{
      if (instance.hasMore case final value?) 'hasMore': value,
      if (instance.nextToken case final value?) 'nextToken': value,
      if (instance.readUserIds case final value?) 'readUserIds': value,
      if (instance.sendStatus case final value?) 'sendStatus': value,
    };

PrivateChatSendRequest _$PrivateChatSendRequestFromJson(
        Map<String, dynamic> json) =>
    PrivateChatSendRequest(
      coolAppCode: json['coolAppCode'] as String,
      msgKey: json['msgKey'] as String,
      msgParam: json['msgParam'] as String,
      openConversationId: json['openConversationId'] as String,
      robotCode: json['robotCode'] as String,
    );

Map<String, dynamic> _$PrivateChatSendRequestToJson(
        PrivateChatSendRequest instance) =>
    <String, dynamic>{
      'coolAppCode': instance.coolAppCode,
      'msgKey': instance.msgKey,
      'msgParam': instance.msgParam,
      'openConversationId': instance.openConversationId,
      'robotCode': instance.robotCode,
    };

PrivateChatSendResponseBody _$PrivateChatSendResponseBodyFromJson(
        Map<String, dynamic> json) =>
    PrivateChatSendResponseBody(
      processQueryKey: json['processQueryKey'] as String,
    );

Map<String, dynamic> _$PrivateChatSendResponseBodyToJson(
        PrivateChatSendResponseBody instance) =>
    <String, dynamic>{
      'processQueryKey': instance.processQueryKey,
    };

QueryBotInstanceInGroupInfoRequest _$QueryBotInstanceInGroupInfoRequestFromJson(
        Map<String, dynamic> json) =>
    QueryBotInstanceInGroupInfoRequest(
      pageNumber: (json['pageNumber'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      robotCode: json['robotCode'] as String,
    );

Map<String, dynamic> _$QueryBotInstanceInGroupInfoRequestToJson(
        QueryBotInstanceInGroupInfoRequest instance) =>
    <String, dynamic>{
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'robotCode': instance.robotCode,
    };

QueryBotInstanceInGroupInfoResponseBody
    _$QueryBotInstanceInGroupInfoResponseBodyFromJson(
            Map<String, dynamic> json) =>
        QueryBotInstanceInGroupInfoResponseBody(
          hasMore: json['hasMore'] as bool?,
          openConversationIds: (json['openConversationIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$QueryBotInstanceInGroupInfoResponseBodyToJson(
        QueryBotInstanceInGroupInfoResponseBody instance) =>
    <String, dynamic>{
      if (instance.hasMore case final value?) 'hasMore': value,
      if (instance.openConversationIds case final value?)
        'openConversationIds': value,
    };

QueryRobotPluginRequest _$QueryRobotPluginRequestFromJson(
        Map<String, dynamic> json) =>
    QueryRobotPluginRequest(
      robotCode: json['robotCode'] as String,
    );

Map<String, dynamic> _$QueryRobotPluginRequestToJson(
        QueryRobotPluginRequest instance) =>
    <String, dynamic>{
      'robotCode': instance.robotCode,
    };

QueryRobotPluginResponseBody _$QueryRobotPluginResponseBodyFromJson(
        Map<String, dynamic> json) =>
    QueryRobotPluginResponseBody(
      pluginInfoList: (json['pluginInfoList'] as List<dynamic>?)
          ?.map((e) => QueryRobotPluginResponseBodyPluginInfoList.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QueryRobotPluginResponseBodyToJson(
        QueryRobotPluginResponseBody instance) =>
    <String, dynamic>{
      if (instance.pluginInfoList?.map((e) => e.toJson()).toList()
          case final value?)
        'pluginInfoList': value,
    };

QueryRobotPluginResponseBodyPluginInfoList
    _$QueryRobotPluginResponseBodyPluginInfoListFromJson(
            Map<String, dynamic> json) =>
        QueryRobotPluginResponseBodyPluginInfoList(
          icon: json['icon'] as String?,
          mobileUrl: json['mobileUrl'] as String?,
          name: json['name'] as String?,
          pcUrl: json['pcUrl'] as String?,
        );

Map<String, dynamic> _$QueryRobotPluginResponseBodyPluginInfoListToJson(
        QueryRobotPluginResponseBodyPluginInfoList instance) =>
    <String, dynamic>{
      if (instance.icon case final value?) 'icon': value,
      if (instance.mobileUrl case final value?) 'mobileUrl': value,
      if (instance.name case final value?) 'name': value,
      if (instance.pcUrl case final value?) 'pcUrl': value,
    };

RobotMessageFileDownloadRequest _$RobotMessageFileDownloadRequestFromJson(
        Map<String, dynamic> json) =>
    RobotMessageFileDownloadRequest(
      downloadCode: json['downloadCode'] as String,
      robotCode: json['robotCode'] as String,
    );

Map<String, dynamic> _$RobotMessageFileDownloadRequestToJson(
        RobotMessageFileDownloadRequest instance) =>
    <String, dynamic>{
      'downloadCode': instance.downloadCode,
      'robotCode': instance.robotCode,
    };

RobotMessageFileDownloadResponseBody
    _$RobotMessageFileDownloadResponseBodyFromJson(Map<String, dynamic> json) =>
        RobotMessageFileDownloadResponseBody(
          downloadUrl: json['downloadUrl'] as String,
        );

Map<String, dynamic> _$RobotMessageFileDownloadResponseBodyToJson(
        RobotMessageFileDownloadResponseBody instance) =>
    <String, dynamic>{
      'downloadUrl': instance.downloadUrl,
    };

RobotRecallDingRequest _$RobotRecallDingRequestFromJson(
        Map<String, dynamic> json) =>
    RobotRecallDingRequest(
      openDingId: json['openDingId'] as String,
      robotCode: json['robotCode'] as String,
    );

Map<String, dynamic> _$RobotRecallDingRequestToJson(
        RobotRecallDingRequest instance) =>
    <String, dynamic>{
      'openDingId': instance.openDingId,
      'robotCode': instance.robotCode,
    };

RobotRecallDingResponseBody _$RobotRecallDingResponseBodyFromJson(
        Map<String, dynamic> json) =>
    RobotRecallDingResponseBody(
      openDingId: json['openDingId'] as String?,
    );

Map<String, dynamic> _$RobotRecallDingResponseBodyToJson(
        RobotRecallDingResponseBody instance) =>
    <String, dynamic>{
      if (instance.openDingId case final value?) 'openDingId': value,
    };

RobotSendDingRequest _$RobotSendDingRequestFromJson(
        Map<String, dynamic> json) =>
    RobotSendDingRequest(
      content: json['content'] as String,
      receiverUserIdList: (json['receiverUserIdList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      remindType: (json['remindType'] as num).toInt(),
      robotCode: json['robotCode'] as String,
    );

Map<String, dynamic> _$RobotSendDingRequestToJson(
        RobotSendDingRequest instance) =>
    <String, dynamic>{
      'content': instance.content,
      'receiverUserIdList': instance.receiverUserIdList,
      'remindType': instance.remindType,
      'robotCode': instance.robotCode,
    };

RobotSendDingResponseBody _$RobotSendDingResponseBodyFromJson(
        Map<String, dynamic> json) =>
    RobotSendDingResponseBody(
      failedList: json['failedList'] as Map<String, dynamic>,
      openDingId: json['openDingId'] as String,
    );

Map<String, dynamic> _$RobotSendDingResponseBodyToJson(
        RobotSendDingResponseBody instance) =>
    <String, dynamic>{
      'failedList': instance.failedList,
      'openDingId': instance.openDingId,
    };

SendRobotDingMessageRequest _$SendRobotDingMessageRequestFromJson(
        Map<String, dynamic> json) =>
    SendRobotDingMessageRequest(
      contentParams: Map<String, String>.from(json['contentParams'] as Map),
      dingTemplateId: json['dingTemplateId'] as String,
      openConversationId: json['openConversationId'] as String,
      receiverUserIdList: (json['receiverUserIdList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      robotCode: json['robotCode'] as String,
    );

Map<String, dynamic> _$SendRobotDingMessageRequestToJson(
        SendRobotDingMessageRequest instance) =>
    <String, dynamic>{
      'contentParams': instance.contentParams,
      'dingTemplateId': instance.dingTemplateId,
      'openConversationId': instance.openConversationId,
      'receiverUserIdList': instance.receiverUserIdList,
      'robotCode': instance.robotCode,
    };

SendRobotDingMessageResponseBody _$SendRobotDingMessageResponseBodyFromJson(
        Map<String, dynamic> json) =>
    SendRobotDingMessageResponseBody(
      dingSendResultId: json['dingSendResultId'] as String,
    );

Map<String, dynamic> _$SendRobotDingMessageResponseBodyToJson(
        SendRobotDingMessageResponseBody instance) =>
    <String, dynamic>{
      'dingSendResultId': instance.dingSendResultId,
    };

SetRobotPluginRequest _$SetRobotPluginRequestFromJson(
        Map<String, dynamic> json) =>
    SetRobotPluginRequest(
      pluginInfoList: (json['pluginInfoList'] as List<dynamic>?)
          ?.map((e) => SetRobotPluginRequestPluginInfoList.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      robotCode: json['robotCode'] as String?,
    );

Map<String, dynamic> _$SetRobotPluginRequestToJson(
        SetRobotPluginRequest instance) =>
    <String, dynamic>{
      if (instance.pluginInfoList?.map((e) => e.toJson()).toList()
          case final value?)
        'pluginInfoList': value,
      if (instance.robotCode case final value?) 'robotCode': value,
    };

SetRobotPluginRequestPluginInfoList
    _$SetRobotPluginRequestPluginInfoListFromJson(Map<String, dynamic> json) =>
        SetRobotPluginRequestPluginInfoList(
          icon: json['icon'] as String,
          mobileUrl: json['mobileUrl'] as String?,
          name: json['name'] as String,
          pcUrl: json['pcUrl'] as String?,
        );

Map<String, dynamic> _$SetRobotPluginRequestPluginInfoListToJson(
        SetRobotPluginRequestPluginInfoList instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      if (instance.mobileUrl case final value?) 'mobileUrl': value,
      'name': instance.name,
      if (instance.pcUrl case final value?) 'pcUrl': value,
    };

SetRobotPluginResponseBody _$SetRobotPluginResponseBodyFromJson(
        Map<String, dynamic> json) =>
    SetRobotPluginResponseBody(
      result: json['result'] as bool?,
    );

Map<String, dynamic> _$SetRobotPluginResponseBodyToJson(
        SetRobotPluginResponseBody instance) =>
    <String, dynamic>{
      if (instance.result case final value?) 'result': value,
    };

UpdateInstalledRobotRequest _$UpdateInstalledRobotRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateInstalledRobotRequest(
      brief: json['brief'] as String?,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
      name: json['name'] as String?,
      robotCode: json['robotCode'] as String,
      updateType: (json['updateType'] as num).toInt(),
    );

Map<String, dynamic> _$UpdateInstalledRobotRequestToJson(
        UpdateInstalledRobotRequest instance) =>
    <String, dynamic>{
      if (instance.brief case final value?) 'brief': value,
      if (instance.description case final value?) 'description': value,
      if (instance.icon case final value?) 'icon': value,
      if (instance.name case final value?) 'name': value,
      'robotCode': instance.robotCode,
      'updateType': instance.updateType,
    };

UpdateInstalledRobotResponseBody _$UpdateInstalledRobotResponseBodyFromJson(
        Map<String, dynamic> json) =>
    UpdateInstalledRobotResponseBody(
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$UpdateInstalledRobotResponseBodyToJson(
        UpdateInstalledRobotResponseBody instance) =>
    <String, dynamic>{
      if (instance.success case final value?) 'success': value,
    };
