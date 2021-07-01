import 'package:fluro/fluro.dart';
import 'package:flutter_sample2021/router/router_handler.dart';

class MyRouters {
  static String root = "/";
  static String router_page01 = "/router01";
  static String router_page02 = "/router02";
  static void configureRouter(FluroRouter router) {
    router.notFoundHandler = errorHandler;
    router.define(router_page01, handler: router01Handler);
    router.define(router_page02, handler: router02Handler);
  }
}
