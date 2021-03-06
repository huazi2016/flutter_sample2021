//谷歌风格
import 'package:flutter/material.dart';
//苹果风格
import 'package:flutter/cupertino.dart';
import 'package:flutter_sample2021/pages/home/cart_page.dart';
import 'package:flutter_sample2021/pages/home/category_page.dart';
import 'package:flutter_sample2021/pages/home/home_page.dart';
import 'package:flutter_sample2021/pages/home/mine_page.dart';
import 'package:flutter_sample2021/test/provide/jump_model.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: "首页"),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.search), label: "分类"),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.shopping_cart), label: "购物车"),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.profile_circled), label: "我的"),
  ];
  final List<Widget> tabPages = [
    HomePage(),
    CategoryPage(),
    CartPage(),
    MinePage()
  ];
  int currentIndex = 0;
  //var currentPage;

  @override
  void initState() {
    //默认展示首页
    //currentPage = tabPages[currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<JumpModel>(builder: (context, notifier, child) {
      print("首页被重绘");
      currentIndex = notifier.currentIndex;
      return Container(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
          body: IndexedStack(
            //IndexedStack 保持页面状态
            index: currentIndex,
            children: tabPages,
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            items: bottomTabs,
            onTap: (index) {
              setState(() {
                context.read<JumpModel>().changeIndex(index);
                //currentPage = tabPages[currentIndex]
              });
            },
          ),
        ),
      );
    });
  }
}
