import 'package:flutter/material.dart';
import 'package:flutter_sample2021/utils/shared_preferences.dart';

class AsyncPage extends StatelessWidget {
  const AsyncPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text("异步支持"),
          ),
          body: Center(
              child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 200),
              MaterialButton(
                  child: Text("Future"),
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {
                    // Future.delayed(new Duration(seconds: 2), () {
                    //   //报错
                    //   throw AssertionError("Error");
                    // }).then((value) =>
                    //     //成功
                    //     print(value)).catchError((error) {
                    //   //失败
                    //   print(error);
                    // }).whenComplete(() =>
                    //     //成功或失败都会执行
                    //     print("whenComplete"));

                    Future.wait([
                      Future.delayed(new Duration(seconds: 2), () {
                        return "ying";
                      }),
                      Future.delayed(new Duration(seconds: 4), () {
                        return "chen";
                      })
                    ])
                        .then((value) => print(value[0] + "---" + value[1]))
                        .catchError((error) {
                      print("catchError");
                    });
                  }),
              MaterialButton(
                  child: Text("Async/await"),
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {
                    task001();
                  }),
            ],
          ))),
    );
  }

  void task001() async {
    try {
      print("object0000001");
      print("object0000002");
      await SpUtil.putString("123", "yingchen666868686868686868");
      print("object0000004");
      // print("object0000005");
    } catch (error) {
      print(error);
    }
  }
}
