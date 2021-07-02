import 'package:flutter/material.dart';
import 'package:flutter_sample2021/base/application.dart';
import 'package:flutter_sample2021/router/my_routers.dart';

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
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                  child: Text("跳转-->1"),
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {
                    Application.router.navigateTo(context, MyRouters.routerPage01 + "");
                  }),
              MaterialButton(
                  child: Text("跳转-->2"),
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {
                    Application.router.navigateTo(context,  MyRouters.routerPage02);
                  }),
              MaterialButton(
                  child: Text("跳转-->空视图"),
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {
                    Application.router.navigateTo(context, MyRouters.root);
                  })
            ],
          ))),
    );
  }
}
