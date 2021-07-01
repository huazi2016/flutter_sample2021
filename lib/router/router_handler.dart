import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample2021/test/router/router_page.dart';

var routerHandler =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return RouterPage(goodsId: "goodsId");
});

void defineRoutes(FluroRouter router) {
  router.define("/users/:id", handler: routerHandler);
}
