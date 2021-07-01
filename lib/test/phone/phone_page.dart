import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PhonePage extends StatefulWidget {
  PhonePage({Key key}) : super(key: key);

  @override
  _PhonePageState createState() => _PhonePageState();
}

class _PhonePageState extends State<PhonePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("手机系统交互"),
        ),
        body: Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              MaterialButton(
                  child: Text("拨打电话"),
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {
                    String url = 'tel:15912345678';
                    _launchURL(url);
                  }),
              SizedBox(height: 30),
              MaterialButton(
                  child: Text("发送短信"),
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {
                    String url = 'sms:5550101234';
                    _launchURL(url);
                  }),
              SizedBox(height: 30),
              MaterialButton(
                  child: Text("打开网页"),
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {
                    String url = 'https://flutter.dev';
                    _launchURL(url);
                  })
            ],
          ),
        ),
      ),
    );
  }

  void _launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw '出错啦! 找不到$url';
}
