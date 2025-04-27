import 'dart:async';
import 'package:dingtalk_robot/src/api/oapi_robot_service.dart';
import 'package:dio/dio.dart';
import 'api/models/oapi_robot.dart';
import 'api/robot_service.dart';
import 'api/models/robot.dart';
import 'config.dart';

class Client{
  static Config config = Config();
  late String accessToken;
  late RobotService robotService;
  late OapiRobotService oapiRobotService;

  Client() {
    Dio dio = Dio(BaseOptions(baseUrl: config.baseUrl));
    robotService = RobotService(dio);
    oapiRobotService = OapiRobotService();
  }

  Future<Client> init() async {
    int expireIn = await _refreshAccessToken();
    Timer.periodic(Duration(seconds: expireIn), (timer) async {
      expireIn = await _refreshAccessToken();
    });
    return this;
  }

  Future<int> _refreshAccessToken() async {
    GetAccessTokenRequest getAccessTokenRequest = GetAccessTokenRequest(appKey: config.appKey, appSecret: config.appSecret);
    GetAccessTokenResponseBody getAccessTokenResponseBody = await robotService.getAccessToken(getAccessTokenRequest: getAccessTokenRequest);
    accessToken = getAccessTokenResponseBody.accessToken;
    return getAccessTokenResponseBody.expireIn;
  }

  Future<OapiRobotSendResponseBody> oapiRobotSend({required String sessionWebhook, required OapiRobotSendRequest oapiRobotSendRequest}) async => await oapiRobotService.oapiRobotSend(sessionWebhook: sessionWebhook, oapiRobotSendRequest: oapiRobotSendRequest);

  Future<BatchOTOQueryResponseBody> batchOTOQuery(BatchOTOQueryRequest batchOTOQueryRequest) async => await robotService.batchOTOQuery(xAcsDingtalkAccessToken: accessToken, batchOTOQueryRequest: batchOTOQueryRequest);

  Future<BatchRecallGroupResponseBody> batchRecallGroup(BatchRecallGroupRequest batchRecallGroupRequest) async => await robotService.batchRecallGroup(xAcsDingtalkAccessToken: accessToken, batchRecallGroupRequest: batchRecallGroupRequest);

  Future<BatchRecallOTOResponseBody> batchRecallOTO(BatchRecallOTORequest batchRecallOTORequest) async => await robotService.batchRecallOTO(xAcsDingtalkAccessToken: accessToken, batchRecallOTORequest: batchRecallOTORequest);

  Future<BatchRecallPrivateChatResponseBody> batchRecallPrivateChat(BatchRecallPrivateChatRequest batchRecallPrivateChatRequest) async => await robotService.batchRecallPrivateChat(xAcsDingtalkAccessToken: accessToken, batchRecallPrivateChatRequest: batchRecallPrivateChatRequest);

  Future<BatchSendOTOResponseBody> batchSendOTO(BatchSendOTORequest batchSendOTORequest) async => await robotService.batchSendOTO(xAcsDingtalkAccessToken: accessToken, batchSendOTORequest: batchSendOTORequest);

  Future<ClearRobotPluginResponseBody> clearRobotPlugin(ClearRobotPluginRequest clearRobotPluginRequest) async => await robotService.clearRobotPlugin(xAcsDingtalkAccessToken: accessToken, clearRobotPluginRequest: clearRobotPluginRequest);

  Future<ExecuteRobotAiSkillResponseBody> executeRobotAiSkill(ExecuteRobotAiSkillRequest executeRobotAiSkillRequest) async => await robotService.executeRobotAiSkill(xAcsDingtalkAccessToken: accessToken, executeRobotAiSkillRequest: executeRobotAiSkillRequest);

  Future<GetBotListInGroupResponseBody> getBotListInGroup(GetBotListInGroupRequest getBotListInGroupRequest) async => await robotService.getBotListInGroup(xAcsDingtalkAccessToken: accessToken, getBotListInGroupRequest: getBotListInGroupRequest);

  Future<OrgGroupQueryResponseBody> orgGroupQuery(OrgGroupQueryRequest orgGroupQueryRequest) async => await robotService.orgGroupQuery(xAcsDingtalkAccessToken: accessToken, orgGroupQueryRequest: orgGroupQueryRequest);

  Future<OrgGroupRecallResponseBody> orgGroupRecall(OrgGroupRecallRequest orgGroupRecallRequest) async => await robotService.orgGroupRecall(xAcsDingtalkAccessToken: accessToken, orgGroupRecallRequest: orgGroupRecallRequest);

  Future<OrgGroupSendResponseBody> orgGroupSend(OrgGroupSendRequest orgGroupSendRequest) async => await robotService.orgGroupSend(xAcsDingtalkAccessToken: accessToken, orgGroupSendRequest: orgGroupSendRequest);

  Future<PrivateChatQueryResponseBody> privateChatQuery(PrivateChatQueryRequest privateChatQueryRequest) async => await robotService.privateChatQuery(xAcsDingtalkAccessToken: accessToken, privateChatQueryRequest: privateChatQueryRequest);

  Future<PrivateChatSendResponseBody> privateChatSend(PrivateChatSendRequest privateChatSendRequest) async => await robotService.privateChatSend(xAcsDingtalkAccessToken: accessToken, privateChatSendRequest: privateChatSendRequest);

  Future<QueryBotInstanceInGroupInfoResponseBody> queryBotInstanceInGroupInfo(QueryBotInstanceInGroupInfoRequest queryBotInstanceInGroupInfoRequest) async => await robotService.queryBotInstanceInGroupInfo(xAcsDingtalkAccessToken: accessToken, queryBotInstanceInGroupInfoRequest: queryBotInstanceInGroupInfoRequest);

  Future<QueryRobotPluginResponseBody> queryRobotPlugin(QueryRobotPluginRequest queryRobotPluginRequest) async => await robotService.queryRobotPlugin(xAcsDingtalkAccessToken: accessToken, queryRobotPluginRequest: queryRobotPluginRequest);

  Future<RobotMessageFileDownloadResponseBody> robotMessageFileDownload(RobotMessageFileDownloadRequest robotMessageFileDownloadRequest) async => await robotService.robotMessageFileDownload(xAcsDingtalkAccessToken: accessToken, robotMessageFileDownloadRequest: robotMessageFileDownloadRequest);

  Future<RobotRecallDingResponseBody> robotRecallDing(RobotRecallDingRequest robotRecallDingRequest) async => await robotService.robotRecallDing(xAcsDingtalkAccessToken: accessToken, robotRecallDingRequest: robotRecallDingRequest);

  Future<RobotSendDingResponseBody> robotSendDing(RobotSendDingRequest robotSendDingRequest) async => await robotService.robotSendDing(xAcsDingtalkAccessToken: accessToken, robotSendDingRequest: robotSendDingRequest);

  Future<SendRobotDingMessageResponseBody> sendRobotDingMessage(SendRobotDingMessageRequest sendRobotDingMessageRequest) async => await robotService.sendRobotDingMessage(xAcsDingtalkAccessToken: accessToken, sendRobotDingMessageRequest: sendRobotDingMessageRequest);

  Future<SetRobotPluginResponseBody> setRobotPlugin(SetRobotPluginRequest setRobotPluginRequest) async => await robotService.setRobotPlugin(xAcsDingtalkAccessToken: accessToken, setRobotPluginRequest: setRobotPluginRequest);

  Future<UpdateInstalledRobotResponseBody> updateInstalledRobot(UpdateInstalledRobotRequest updateInstalledRobotRequest) async => await robotService.updateInstalledRobot(xAcsDingtalkAccessToken: accessToken, updateInstalledRobotRequest: updateInstalledRobotRequest);

}


