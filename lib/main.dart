import 'package:flutter/material.dart';
import 'package:flutter_sample2021/pages/MainPage.dart';
import 'package:flutter_sample2021/test/provide/CountModel.dart';
import 'package:provider/provider.dart';

void main() {
  //runApp(MyApp());
  //全局provide监听
  //接收页面不需要声明ChangeNotifierProvider, 只需通过Consumer获取Model使用
  runApp(ChangeNotifierProvider(
    create: (_) => CountModel(),
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

//局部provide监听-声明
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//         //状态管理
//         providers: [
//           ChangeNotifierProvider.value(value: CountModel()),
//         ],
//         child: Container(
//           child: MaterialApp(
//               //去除debug标签
//               debugShowCheckedModeBanner: false,
//               theme: ThemeData(primaryColor: Colors.purple),
//               //title: "首页++",
//               home: MainPage()),
//         ));
//   }
// }

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
