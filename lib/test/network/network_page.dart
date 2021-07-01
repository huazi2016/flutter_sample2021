import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample2021/test/network/net_config.dart';
import 'package:flutter_sample2021/test/network/net_config.dart';

class NetworkPage extends StatefulWidget {
  NetworkPage({Key key}) : super(key: key);

  @override
  _NetworkPageState createState() => _NetworkPageState();
}

class _NetworkPageState extends State<NetworkPage> {
  String _json = "";
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(
              title: Text("网络请求"),
            ),
            body: Container(
                padding: EdgeInsets.only(top: 20),
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    MaterialButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Text("获取"),
                      onPressed: () {
                        _getTestData().then((value) => setState(() {
                              _json = value.toString();
                            }));
                      },
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      alignment: Alignment.center,
                      child: Text(_json),
                    )
                  ],
                ))));
  }

  Future _getTestData() async {
    try {
      var dio = Dio();
      //设置请求头
      //dio.options.headers = juejinHeaders;
      Response response =
          //await dio.get("https://time.geekbang.org/serv/v2/explore/list");
          await dio.get(servicePath["service_time"]);
      // await dio.get("https://gank.io/api/v2/categories/Article");
      // return print(response);
      return response;
    } catch (e) {
      return print(e);
    }
  }
}
