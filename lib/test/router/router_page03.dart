import 'package:flutter/material.dart';

class RouterPage03 extends StatefulWidget {
  RouterPage03({Key key}) : super(key: key);

  @override
  _RouterPage03State createState() => _RouterPage03State();
}

class _RouterPage03State extends State<RouterPage03> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("router测试3"),
        ),
        body: Text("内容333"),
      ),
    );
  }
}