import 'package:flutter/material.dart';
import 'package:flutter_sample2021/pages/MainPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
          //去除debug标签
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primaryColor: Colors.purple),
          //title: "首页++",
          home: MainPage()),
    );
  }
}
