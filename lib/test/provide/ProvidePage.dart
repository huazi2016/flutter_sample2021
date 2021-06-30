import 'package:flutter/material.dart';
import 'package:flutter_sample2021/test/provide/CountModel.dart';
import 'package:provider/provider.dart';

class ProvidePage extends StatefulWidget {
  ProvidePage({Key key}) : super(key: key);

  @override
  _ProvidePageState createState() => _ProvidePageState();
}

//局部provide监听--接收
// class _ProvidePageState extends State<ProvidePage> {
//   @override
//   Widget build(BuildContext context) {
//     print("页面被重新绘制了");
//     //状态声明
//     return ChangeNotifierProvider<CountModel>(
//         create: (context) => CountModel(),
//         builder: (context, child) {
//           return Container(
//             child: Scaffold(
//                 appBar: AppBar(
//                   title: Text("provide demo"),
//                 ),
//                 body: Center(
//                     child: Column(
//                   //居中
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[Number(), MyButton()],
//                 ))),
//           );
//         });
//   }
// }

class _ProvidePageState extends State<ProvidePage> {
  @override
  Widget build(BuildContext context) {
    print("页面被重新绘制了");
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text("provide demo"),
          ),
          body: Center(
              child: Column(
            //居中
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Number(), MyButton()],
          ))),
    );
  }
}

class Number extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        //状态接收
        child: Consumer<CountModel>(builder: (context, notifier, child) {
      print("text被重新绘制了");
      return Text("${notifier.getValue}");
    }));
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: MaterialButton(
          onPressed: () {
            //状态发射
            context.read<CountModel>().increment();
          },
          child: Text("开始"),
          textColor: Colors.white,
          color: Colors.blue),
    );
  }
}
