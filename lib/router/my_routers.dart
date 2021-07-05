import 'package:fluro/fluro.dart';
import 'package:flutter_sample2021/router/router_handler.dart';

class MyRouters {
  static String root = "/";
  static String routerPage01 = "/router01";
  static String routerPage02 = "/router02";
  static String htmlPage = "/htmlPage";
  static String asyncPage = "/asyncPage";
  static void configureRouter(FluroRouter router) {
    router.notFoundHandler = errorHandler;
    router.define(routerPage01, handler: router01Handler);
    router.define(routerPage02, handler: router02Handler);
    router.define(asyncPage, handler: asyncHandler);
    router.define(htmlPage, handler: htmlHandler);
  }
}
