import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import 'models/robot.dart';

part 'robot_service.g.dart';

@RestApi()
abstract class RobotService {
  factory RobotService(Dio dio) {
    return _RobotService(dio);
  }

  /// 获取AccessToken
  @POST("/oauth2/accessToken")
  Future<GetAccessTokenResponseBody> getAccessToken({@Body() required GetAccessTokenRequest getAccessTokenRequest});

  /// 批量查询人与机器人会话机器人消息是否已读
  @GET("/robot/oToMessages/readStatus")
  Future<BatchOTOQueryResponseBody> batchOTOQuery({@Header("x-acs-dingtalk-access-token") required String xAcsDingtalkAccessToken, @Body() required  BatchOTOQueryRequest batchOTOQueryRequest});

  /// 批量撤回群聊机器人消息
  @POST("/robot/groupMessages/batchRecall")
  Future<BatchRecallGroupResponseBody> batchRecallGroup({@Header("x-acs-dingtalk-access-token") required String xAcsDingtalkAccessToken, @Body() required  BatchRecallGroupRequest batchRecallGroupRequest});

  /// 批量撤回人与机器人会话中机器人消息
  @POST("/robot/otoMessages/batchRecall")
  Future<BatchRecallOTOResponseBody> batchRecallOTO({@Header("x-acs-dingtalk-access-token") required String xAcsDingtalkAccessToken, @Body() required  BatchRecallOTORequest batchRecallOTORequest});

  /// 批量撤回人与人会话中机器人消息
  @POST("/robot/privateChatMessages/batchRecall")
  Future<BatchRecallPrivateChatResponseBody> batchRecallPrivateChat({@Header("x-acs-dingtalk-access-token") required String xAcsDingtalkAccessToken, @Body() required  BatchRecallPrivateChatRequest batchRecallPrivateChatRequest});

  /// 批量发送人与机器人会话中机器人消息
  @POST("/robot/oToMessages/batchSend")
  Future<BatchSendOTOResponseBody> batchSendOTO({@Header("x-acs-dingtalk-access-token") required String xAcsDingtalkAccessToken, @Body() required BatchSendOTORequest batchSendOTORequest});

  /// 清空单聊机器人快捷入口
  @POST("/robot/plugins/clear")
  Future<ClearRobotPluginResponseBody> clearRobotPlugin({@Header("x-acs-dingtalk-access-token") required String xAcsDingtalkAccessToken, @Body() required  ClearRobotPluginRequest clearRobotPluginRequest});

  /// 执行机器人的AI技能
  @POST("/robot/aiSkill/execute")
  Future<ExecuteRobotAiSkillResponseBody> executeRobotAiSkill({@Header("x-acs-dingtalk-access-token") required String xAcsDingtalkAccessToken, @Body() required  ExecuteRobotAiSkillRequest executeRobotAiSkillRequest});

  /// 查询群内的机器人列表
  @POST("/robot/groups/robots/query")
  Future<GetBotListInGroupResponseBody> getBotListInGroup({@Header("x-acs-dingtalk-access-token") required String xAcsDingtalkAccessToken, @Body() required  GetBotListInGroupRequest getBotListInGroupRequest});

  /// 管理机器人启用，停用状态
  @POST("/robot/statuses/manage")
  Future<ManageSingleChatRobotStatusResponseBody> manageSingleChatRobotStatus({@Header("x-acs-dingtalk-access-token") required String xAcsDingtalkAccessToken, @Body() required  ManageSingleChatRobotStatusRequest manageSingleChatRobotStatusRequest});

  /// 查询企业机器人群聊消息用户已读状态
  @POST("/robot/groupMessages/query")
  Future<OrgGroupQueryResponseBody> orgGroupQuery({@Header("x-acs-dingtalk-access-token") required String xAcsDingtalkAccessToken, @Body() required  OrgGroupQueryRequest orgGroupQueryRequest});

  /// 企业机器人撤回内部群消息
  @POST("/robot/groupMessages/recall")
  Future<OrgGroupRecallResponseBody> orgGroupRecall({@Header("x-acs-dingtalk-access-token") required String xAcsDingtalkAccessToken, @Body() required  OrgGroupRecallRequest orgGroupRecallRequest});

  /// 机器人发送群聊消息
  @POST("/robot/groupMessages/send")
  Future<OrgGroupSendResponseBody> orgGroupSend({@Header("x-acs-dingtalk-access-token") required String xAcsDingtalkAccessToken, @Body() required OrgGroupSendRequest orgGroupSendRequest});

  /// 查询人与人会话中机器人已读消息
  @POST("/robot/privateChatMessages/query")
  Future<PrivateChatQueryResponseBody> privateChatQuery({@Header("x-acs-dingtalk-access-token") required String xAcsDingtalkAccessToken, @Body() required PrivateChatQueryRequest privateChatQueryRequest});

  /// 人与人会话中机器人发送普通消息
  @POST("/robot/privateChatMessages/send")
  Future<PrivateChatSendResponseBody> privateChatSend({@Header("x-acs-dingtalk-access-token") required String xAcsDingtalkAccessToken, @Body() required  PrivateChatSendRequest privateChatSendRequest});

  /// 获取机器人所在群信息
  @POST("/robot/groups/query")
  Future<QueryBotInstanceInGroupInfoResponseBody> queryBotInstanceInGroupInfo({@Header("x-acs-dingtalk-access-token") required String xAcsDingtalkAccessToken, @Body() required  QueryBotInstanceInGroupInfoRequest queryBotInstanceInGroupInfoRequest});

  /// 查询单聊机器人快捷入口
  @POST("/robot/plugins/query")
  Future<QueryRobotPluginResponseBody> queryRobotPlugin({@Header("x-acs-dingtalk-access-token") required String xAcsDingtalkAccessToken, @Body() required  QueryRobotPluginRequest queryRobotPluginRequest});

  /// 获取机器人消息中文件下载链接
  @POST("/robot/messageFiles/download")
  Future<RobotMessageFileDownloadResponseBody> robotMessageFileDownload({@Header("x-acs-dingtalk-access-token") required String xAcsDingtalkAccessToken, @Body() required  RobotMessageFileDownloadRequest robotMessageFileDownloadRequest});

  /// 撤回已经发送的DING消息
  @POST("/robot/ding/recall")
  Future<RobotRecallDingResponseBody> robotRecallDing({@Header("x-acs-dingtalk-access-token") required String xAcsDingtalkAccessToken, @Body() required  RobotRecallDingRequest robotRecallDingRequest});

  /// 发送DING消息
  @POST("/robot/ding/send")
  Future<RobotSendDingResponseBody> robotSendDing({@Header("x-acs-dingtalk-access-token") required String xAcsDingtalkAccessToken, @Body() required  RobotSendDingRequest robotSendDingRequest});

  /// 机器人发送DING消息
  @POST("/robot/dingMessages/send")
  Future<SendRobotDingMessageResponseBody> sendRobotDingMessage({@Header("x-acs-dingtalk-access-token") required String xAcsDingtalkAccessToken, @Body() required  SendRobotDingMessageRequest sendRobotDingMessageRequest});

  /// 设置单聊机器人快捷入口
  @POST("/robot/plugins/set")
  Future<SetRobotPluginResponseBody> setRobotPlugin({@Header("x-acs-dingtalk-access-token") required String xAcsDingtalkAccessToken, @Body() required  SetRobotPluginRequest setRobotPluginRequest});

  /// 更新安装到组织的机器人信息
  @POST("/robot/managements/infos")
  Future<UpdateInstalledRobotResponseBody> updateInstalledRobot({@Header("x-acs-dingtalk-access-token") required String xAcsDingtalkAccessToken, @Body() required  UpdateInstalledRobotRequest updateInstalledRobotRequest});

}
