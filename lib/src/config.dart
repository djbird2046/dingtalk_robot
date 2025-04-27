import 'package:logging/logging.dart';

class Config {
  String baseUrl;
  String version;
  String appKey;
  String appSecret;
  String serverPrefix;
  int port;
  Level logLevel;

  Config({this.baseUrl = "https://api.dingtalk.com/v1.0", this.version = "0.0.0", this.appKey = "", this.appSecret = "", this.serverPrefix = "", this.port = 8080, this.logLevel = Level.INFO});
}

