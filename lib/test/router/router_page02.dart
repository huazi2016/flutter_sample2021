import 'package:flutter/material.dart';

class RouterPage02 extends StatefulWidget {
  RouterPage02({Key key}) : super(key: key);

  @override
  _RouterPage02State createState() => _RouterPage02State();
}

class _RouterPage02State extends State<RouterPage02> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("router测试2"),
        ),
        body: Text("内容222"),
      ),
    );
  }
}