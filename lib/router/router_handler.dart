import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample2021/test/async_support.dart';
import 'package:flutter_sample2021/test/html/html_page.dart';
import 'package:flutter_sample2021/test/router/router_page01.dart';
import 'package:flutter_sample2021/test/router/router_page02.dart';
import 'package:flutter_sample2021/test/router/empty_page.dart';

var errorHandler =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return EmptyPage();
});

var router01Handler =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return RouterPage01();
});

var router02Handler =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return RouterPage02();
});

var htmlHandler =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return HtmlPage();
});

var asyncHandler =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return AsyncPage();
});
