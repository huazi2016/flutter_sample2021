import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample2021/base/application.dart';
import 'package:flutter_sample2021/pages/main_page.dart';
import 'package:flutter_sample2021/router/my_routers.dart';
import 'package:flutter_sample2021/test/provide/count_model.dart';
import 'package:flutter_sample2021/utils/shared_preferences.dart';
import 'package:provider/provider.dart';

void main() {
  //全局provide监听
  //接收页面不需要声明ChangeNotifierProvider, 只需通过Consumer获取Model使用
  runApp(ChangeNotifierProvider(
    create: (_) => CountModel(),
    child: MyApp(),
  ));
  //runApp(MyApp());
  //初始化轻量级存储sp
  initSharedPreferences();
}

void initSharedPreferences() async {
  await SpUtil.getInstance();
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
    //init Router
    final router = FluroRouter();
    MyRouters.configureRouter(router);
    Application.router = router;
    return Container(
      child: MaterialApp(
          //声明使用自定义router
          onGenerateRoute: Application.router.generator,
          //去除debug标签
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primaryColor: Colors.purple),
          //title: "首页++",
          home: MainPage()),
    );
  }
}
