import 'dart:io';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';
import '../utils/logger.dart';
import 'controller.dart';
import 'dingtalk_robot_message_handler.dart';
import 'middleware.dart';
import 'router.dart';

class ReceiveServer {
  DingtalkRobotMessageHandler dingtalkRobotMessageHandler;
  String appSecret;
  String host = "0.0.0.0";
  String serverPrefix;
  int port;

  ReceiveServer({required this.dingtalkRobotMessageHandler, required this.appSecret, this.serverPrefix = "", this.port = 8080});

  Future<void> start() async {
    Controller controller = Controller(dingtalkRobotMessageHandler);
    apiRoutes(controller);

    final Router mainRouter = Router();
    mainRouter.mount(serverPrefix, apiRouter);
    Handler handler = const Pipeline()
    .addMiddleware(checkAuthorization(appSecret))
      .addMiddleware(logRequest())
      .addHandler(mainRouter);

    HttpServer server = await serve(handler, host, port);
    logger.log(LogModule.http, "Start Server", detail: "http://${server.address.host}:${server.port}${serverPrefix}");
  }
}