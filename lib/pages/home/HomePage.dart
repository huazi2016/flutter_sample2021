import 'package:flutter/material.dart';
import 'package:flutter_sample2021/test/network/NetWorkPage.dart';
import 'package:flutter_sample2021/utils/ToastUtil.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _entryNames = ["网络请求", "工具类", "上拉加载", "图片"];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("颖辰"),
        ),
        body: Center(
          child: _entryListWidget(),
        ),
      ),
    );
  }

  /**
   * 设置列表数据
   */
  _entryListWidget() {
    if (_entryNames.length > 0) {
      return Container(
          child: ListView.builder(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              itemCount: _entryNames.length,
              itemBuilder: (context, index) {
                //GestureDetector处理用户简单手势交互
                return GestureDetector(
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Center(
                          child: Text(_entryNames[index],
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ))),
                    ),
                  ),
                  onTap: () {
                    _clickItemJumpPage(index);
                  },
                  onLongPress: () {
                    ToastUtil.showToastCenter(context, "长按事件");
                  },
                );
              }));
    } else {
      return Text("暂无数据");
    }
  }

  /**
   * 跳转到具体页面
   */
  _clickItemJumpPage(int index) {
    if (index == 0) {
      //网络请求
      Navigator.push(context,
          new MaterialPageRoute(builder: (context) => new NetWorkPage()));
    } else if (index == 1) {
      ToastUtil.showToastCenter(context, "点击啦2");
    } else if (index == 2) {
      ToastUtil.showToastCenter(context, "点击啦3");
    } else if (index == 3) {
      ToastUtil.showToastCenter(context, "点击啦4");
    } else if (index == 4) {
      ToastUtil.showToastCenter(context, "点击啦5");
    }

    bool isShow = false;
    String result = isShow ? "ddd" : "ddddadf";
  }

  /**
   * 常规写法, 暂时保留
   */
  _entryListWidget02() {
    return Container(
      child: ListView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        //shrinkWrap: true,
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text("第1个"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("第2个"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("第3个"),
            ),
          ),
        ],
      ),
    );
  }
}
