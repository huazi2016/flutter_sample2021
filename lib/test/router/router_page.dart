import 'package:flutter/material.dart';

class RouterPage extends StatefulWidget {
  final String goodsId;
  //构造传递参数, list/map/class都可传
  RouterPage({Key key, @required this.goodsId}) : super(key: key);

  @override
  _RouterPageState createState() => _RouterPageState();
}

class _RouterPageState extends State<RouterPage> {
  @override
  Widget build(BuildContext context) {
    //使用参数
    print("goodsId====" + widget.goodsId);
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("router demo"),
        ),
        body: Text("测试"),
      ),
    );
  }
}
