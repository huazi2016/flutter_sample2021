import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewPage extends StatefulWidget {
  WebviewPage({Key key}) : super(key: key);

  @override
  _WebviewPageState createState() => _WebviewPageState();
}

class _WebviewPageState extends State<WebviewPage> {
  WebViewController _controller;
  String _title = "webview demo";

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text(_title),
          ),
          body: WebView(
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: "https://www.qq.com",
              onWebViewCreated: (controller) {
                this._controller = controller;
              },
              onPageFinished: (url) {
                //拦截标题
                _controller.evaluateJavascript("document.title").then((value) {
                  setState(() {
                    _title = value;
                  });
                });
              },
              navigationDelegate: (NavigationRequest request) {
                if (request.url == "js//webview") {
                  print("调用了js//webview");
                  return NavigationDecision.prevent; //阻止路由替换
                }
                print("allowing navigation");
                return NavigationDecision.navigate; //允许路由替换
              })),
    );
  }
}
