import 'package:flutter/material.dart';

class EmptyPage extends StatefulWidget {
  EmptyPage({Key key}) : super(key: key);

  @override
  _EmptyPageState createState() => _EmptyPageState();
}

class _EmptyPageState extends State<EmptyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("页面异常"),
        ),
        body: Center(
          child: Text("路由出错啦!!!"),
        ),
      ),
    );
  }
}
