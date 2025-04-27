// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'robot_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations

class _RobotService implements RobotService {
  _RobotService(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<GetAccessTokenResponseBody> getAccessToken({
    required GetAccessTokenRequest getAccessTokenRequest,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(getAccessTokenRequest.toJson());
    final _options = _setStreamType<GetAccessTokenResponseBody>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/oauth2/accessToken',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late GetAccessTokenResponseBody _value;
    try {
      _value = GetAccessTokenResponseBody.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<BatchOTOQueryResponseBody> batchOTOQuery({
    required String xAcsDingtalkAccessToken,
    required BatchOTOQueryRequest batchOTOQueryRequest,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-acs-dingtalk-access-token': xAcsDingtalkAccessToken,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(batchOTOQueryRequest.toJson());
    final _options = _setStreamType<BatchOTOQueryResponseBody>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/robot/oToMessages/readStatus',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BatchOTOQueryResponseBody _value;
    try {
      _value = BatchOTOQueryResponseBody.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<BatchRecallGroupResponseBody> batchRecallGroup({
    required String xAcsDingtalkAccessToken,
    required BatchRecallGroupRequest batchRecallGroupRequest,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-acs-dingtalk-access-token': xAcsDingtalkAccessToken,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(batchRecallGroupRequest.toJson());
    final _options = _setStreamType<BatchRecallGroupResponseBody>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/robot/groupMessages/batchRecall',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BatchRecallGroupResponseBody _value;
    try {
      _value = BatchRecallGroupResponseBody.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<BatchRecallOTOResponseBody> batchRecallOTO({
    required String xAcsDingtalkAccessToken,
    required BatchRecallOTORequest batchRecallOTORequest,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-acs-dingtalk-access-token': xAcsDingtalkAccessToken,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(batchRecallOTORequest.toJson());
    final _options = _setStreamType<BatchRecallOTOResponseBody>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/robot/otoMessages/batchRecall',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BatchRecallOTOResponseBody _value;
    try {
      _value = BatchRecallOTOResponseBody.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<BatchRecallPrivateChatResponseBody> batchRecallPrivateChat({
    required String xAcsDingtalkAccessToken,
    required BatchRecallPrivateChatRequest batchRecallPrivateChatRequest,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-acs-dingtalk-access-token': xAcsDingtalkAccessToken,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(batchRecallPrivateChatRequest.toJson());
    final _options = _setStreamType<BatchRecallPrivateChatResponseBody>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/robot/privateChatMessages/batchRecall',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BatchRecallPrivateChatResponseBody _value;
    try {
      _value = BatchRecallPrivateChatResponseBody.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<BatchSendOTOResponseBody> batchSendOTO({
    required String xAcsDingtalkAccessToken,
    required BatchSendOTORequest batchSendOTORequest,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-acs-dingtalk-access-token': xAcsDingtalkAccessToken,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(batchSendOTORequest.toJson());
    final _options = _setStreamType<BatchSendOTOResponseBody>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/robot/oToMessages/batchSend',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BatchSendOTOResponseBody _value;
    try {
      _value = BatchSendOTOResponseBody.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ClearRobotPluginResponseBody> clearRobotPlugin({
    required String xAcsDingtalkAccessToken,
    required ClearRobotPluginRequest clearRobotPluginRequest,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-acs-dingtalk-access-token': xAcsDingtalkAccessToken,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(clearRobotPluginRequest.toJson());
    final _options = _setStreamType<ClearRobotPluginResponseBody>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/robot/plugins/clear',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ClearRobotPluginResponseBody _value;
    try {
      _value = ClearRobotPluginResponseBody.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ExecuteRobotAiSkillResponseBody> executeRobotAiSkill({
    required String xAcsDingtalkAccessToken,
    required ExecuteRobotAiSkillRequest executeRobotAiSkillRequest,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-acs-dingtalk-access-token': xAcsDingtalkAccessToken,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(executeRobotAiSkillRequest.toJson());
    final _options = _setStreamType<ExecuteRobotAiSkillResponseBody>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/robot/aiSkill/execute',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ExecuteRobotAiSkillResponseBody _value;
    try {
      _value = ExecuteRobotAiSkillResponseBody.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<GetBotListInGroupResponseBody> getBotListInGroup({
    required String xAcsDingtalkAccessToken,
    required GetBotListInGroupRequest getBotListInGroupRequest,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-acs-dingtalk-access-token': xAcsDingtalkAccessToken,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(getBotListInGroupRequest.toJson());
    final _options = _setStreamType<GetBotListInGroupResponseBody>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/robot/groups/robots/query',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late GetBotListInGroupResponseBody _value;
    try {
      _value = GetBotListInGroupResponseBody.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ManageSingleChatRobotStatusResponseBody> manageSingleChatRobotStatus({
    required String xAcsDingtalkAccessToken,
    required ManageSingleChatRobotStatusRequest
        manageSingleChatRobotStatusRequest,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-acs-dingtalk-access-token': xAcsDingtalkAccessToken,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(manageSingleChatRobotStatusRequest.toJson());
    final _options = _setStreamType<ManageSingleChatRobotStatusResponseBody>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/robot/statuses/manage',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ManageSingleChatRobotStatusResponseBody _value;
    try {
      _value = ManageSingleChatRobotStatusResponseBody.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<OrgGroupQueryResponseBody> orgGroupQuery({
    required String xAcsDingtalkAccessToken,
    required OrgGroupQueryRequest orgGroupQueryRequest,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-acs-dingtalk-access-token': xAcsDingtalkAccessToken,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(orgGroupQueryRequest.toJson());
    final _options = _setStreamType<OrgGroupQueryResponseBody>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/robot/groupMessages/query',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late OrgGroupQueryResponseBody _value;
    try {
      _value = OrgGroupQueryResponseBody.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<OrgGroupRecallResponseBody> orgGroupRecall({
    required String xAcsDingtalkAccessToken,
    required OrgGroupRecallRequest orgGroupRecallRequest,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-acs-dingtalk-access-token': xAcsDingtalkAccessToken,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(orgGroupRecallRequest.toJson());
    final _options = _setStreamType<OrgGroupRecallResponseBody>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/robot/groupMessages/recall',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late OrgGroupRecallResponseBody _value;
    try {
      _value = OrgGroupRecallResponseBody.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<OrgGroupSendResponseBody> orgGroupSend({
    required String xAcsDingtalkAccessToken,
    required OrgGroupSendRequest orgGroupSendRequest,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-acs-dingtalk-access-token': xAcsDingtalkAccessToken,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(orgGroupSendRequest.toJson());
    final _options = _setStreamType<OrgGroupSendResponseBody>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/robot/groupMessages/send',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late OrgGroupSendResponseBody _value;
    try {
      _value = OrgGroupSendResponseBody.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<PrivateChatQueryResponseBody> privateChatQuery({
    required String xAcsDingtalkAccessToken,
    required PrivateChatQueryRequest privateChatQueryRequest,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-acs-dingtalk-access-token': xAcsDingtalkAccessToken,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(privateChatQueryRequest.toJson());
    final _options = _setStreamType<PrivateChatQueryResponseBody>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/robot/privateChatMessages/query',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late PrivateChatQueryResponseBody _value;
    try {
      _value = PrivateChatQueryResponseBody.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<PrivateChatSendResponseBody> privateChatSend({
    required String xAcsDingtalkAccessToken,
    required PrivateChatSendRequest privateChatSendRequest,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-acs-dingtalk-access-token': xAcsDingtalkAccessToken,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(privateChatSendRequest.toJson());
    final _options = _setStreamType<PrivateChatSendResponseBody>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/robot/privateChatMessages/send',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late PrivateChatSendResponseBody _value;
    try {
      _value = PrivateChatSendResponseBody.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<QueryBotInstanceInGroupInfoResponseBody> queryBotInstanceInGroupInfo({
    required String xAcsDingtalkAccessToken,
    required QueryBotInstanceInGroupInfoRequest
        queryBotInstanceInGroupInfoRequest,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-acs-dingtalk-access-token': xAcsDingtalkAccessToken,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(queryBotInstanceInGroupInfoRequest.toJson());
    final _options = _setStreamType<QueryBotInstanceInGroupInfoResponseBody>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/robot/groups/query',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late QueryBotInstanceInGroupInfoResponseBody _value;
    try {
      _value = QueryBotInstanceInGroupInfoResponseBody.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<QueryRobotPluginResponseBody> queryRobotPlugin({
    required String xAcsDingtalkAccessToken,
    required QueryRobotPluginRequest queryRobotPluginRequest,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-acs-dingtalk-access-token': xAcsDingtalkAccessToken,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(queryRobotPluginRequest.toJson());
    final _options = _setStreamType<QueryRobotPluginResponseBody>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/robot/plugins/query',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late QueryRobotPluginResponseBody _value;
    try {
      _value = QueryRobotPluginResponseBody.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<RobotMessageFileDownloadResponseBody> robotMessageFileDownload({
    required String xAcsDingtalkAccessToken,
    required RobotMessageFileDownloadRequest robotMessageFileDownloadRequest,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-acs-dingtalk-access-token': xAcsDingtalkAccessToken,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(robotMessageFileDownloadRequest.toJson());
    final _options = _setStreamType<RobotMessageFileDownloadResponseBody>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/robot/messageFiles/download',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late RobotMessageFileDownloadResponseBody _value;
    try {
      _value = RobotMessageFileDownloadResponseBody.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<RobotRecallDingResponseBody> robotRecallDing({
    required String xAcsDingtalkAccessToken,
    required RobotRecallDingRequest robotRecallDingRequest,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-acs-dingtalk-access-token': xAcsDingtalkAccessToken,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(robotRecallDingRequest.toJson());
    final _options = _setStreamType<RobotRecallDingResponseBody>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/robot/ding/recall',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late RobotRecallDingResponseBody _value;
    try {
      _value = RobotRecallDingResponseBody.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<RobotSendDingResponseBody> robotSendDing({
    required String xAcsDingtalkAccessToken,
    required RobotSendDingRequest robotSendDingRequest,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-acs-dingtalk-access-token': xAcsDingtalkAccessToken,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(robotSendDingRequest.toJson());
    final _options = _setStreamType<RobotSendDingResponseBody>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/robot/ding/send',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late RobotSendDingResponseBody _value;
    try {
      _value = RobotSendDingResponseBody.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<SendRobotDingMessageResponseBody> sendRobotDingMessage({
    required String xAcsDingtalkAccessToken,
    required SendRobotDingMessageRequest sendRobotDingMessageRequest,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-acs-dingtalk-access-token': xAcsDingtalkAccessToken,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(sendRobotDingMessageRequest.toJson());
    final _options = _setStreamType<SendRobotDingMessageResponseBody>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/robot/dingMessages/send',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late SendRobotDingMessageResponseBody _value;
    try {
      _value = SendRobotDingMessageResponseBody.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<SetRobotPluginResponseBody> setRobotPlugin({
    required String xAcsDingtalkAccessToken,
    required SetRobotPluginRequest setRobotPluginRequest,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-acs-dingtalk-access-token': xAcsDingtalkAccessToken,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(setRobotPluginRequest.toJson());
    final _options = _setStreamType<SetRobotPluginResponseBody>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/robot/plugins/set',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late SetRobotPluginResponseBody _value;
    try {
      _value = SetRobotPluginResponseBody.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<UpdateInstalledRobotResponseBody> updateInstalledRobot({
    required String xAcsDingtalkAccessToken,
    required UpdateInstalledRobotRequest updateInstalledRobotRequest,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-acs-dingtalk-access-token': xAcsDingtalkAccessToken,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(updateInstalledRobotRequest.toJson());
    final _options = _setStreamType<UpdateInstalledRobotResponseBody>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/robot/managements/infos',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late UpdateInstalledRobotResponseBody _value;
    try {
      _value = UpdateInstalledRobotResponseBody.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
