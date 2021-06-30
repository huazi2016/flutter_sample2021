import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_sample2021/test/network/NetWorkPage.dart';
import 'package:flutter_sample2021/test/phone/PhonePage.dart';
import 'package:flutter_sample2021/test/provide/ProvidePage.dart';
import 'package:flutter_sample2021/utils/ToastUtil.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  final List<String> _entryNames = ["网络请求", "电话/短信等", "provide状态管理", "图片"];

/**
 * AutomaticKeepAliveClientMixin 保持页面状态
 */
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    print(11111111);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text("颖辰"),
          ),
          body: _entryListWidget()),
    );
  }

  /**
   * 设置列表数据
   */
  _entryListWidget() {
    if (_entryNames.length > 0) {
      //下拉刷新
      return EasyRefresh(
          header: ClassicalHeader(
            bgColor: Colors.white,
            textColor: Colors.black87,
            infoColor: Colors.black87,
            showInfo: true,
            noMoreText: "没有更多了",
            refreshReadyText:"开始刷新",
            refreshingText: "正在刷新",
            refreshedText: "刷新完成"
            //infoText: "加载中"
          ),
          footer: ClassicalFooter(
            bgColor: Colors.white,
            textColor: Colors.black87,
            infoColor: Colors.black87,
            showInfo: true,
            noMoreText: "没有更多了",
            loadReadyText:"开始加载",
            loadingText:"正在加载",
            //loadText:"上拉加载",
            loadedText:"上拉加载"
            // infoText: "加载中"
          ),
          onRefresh: () async {
            // FinishRefresh(true, false);
            // ToastUtil.showToastCenter(context, "下拉刷新");
          },
          onLoad: () async {
            //FinishLoad(true, false);
            // ToastUtil.showToastCenter(context, "上拉加载");
          },
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
      //电话/短信等
      Navigator.push(context,
          new MaterialPageRoute(builder: (context) => new PhonePage()));
    } else if (index == 2) {
      //provide状态管理
      Navigator.push(context,
          new MaterialPageRoute(builder: (context) => new ProvidePage()));
    } else if (index == 3) {
      ToastUtil.showToastCenter(context, "点击啦4");
    } else if (index == 4) {
      ToastUtil.showToastCenter(context, "点击啦5");
    }
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
