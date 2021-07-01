import 'package:flutter/material.dart';

class RouterPage01 extends StatefulWidget {
  RouterPage01({Key key}) : super(key: key);

  @override
  _RouterPage01State createState() => _RouterPage01State();
}

class _RouterPage01State extends State<RouterPage01> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("router测试1"),
        ),
        body: Text("内容111"),
      ),
    );
  }
}
