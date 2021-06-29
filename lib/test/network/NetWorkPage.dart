import 'package:flutter/material.dart';

class NetWorkPage extends StatefulWidget {
  NetWorkPage({Key key}) : super(key: key);

  @override
  _NetWorkPageState createState() => _NetWorkPageState();
}

class _NetWorkPageState extends State<NetWorkPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("网络请求"),
    );
  }
}
