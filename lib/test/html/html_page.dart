import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_sample2021/utils/shared_preferences.dart';

class HtmlPage extends StatefulWidget {
  HtmlPage({Key key}) : super(key: key);

  @override
  _HtmlPageState createState() => _HtmlPageState();
}

class _HtmlPageState extends State<HtmlPage> {
  String htmlData = "<blockquote>争做国内使用体验Z好的开源 Web 富文本编辑器！</blockquote>\n" +
      "<h1>为何选择 wangEditor</h1>\n" +
      "<ul>\n" +
      "  <li>万星项目 <a href=\"https://github.com/wangeditor-team/wangEditor/releases\">Github Star 1w+</a></li>\n" +
      "  <li>简洁、轻量级、<a href=\"//doc.wangeditor.com/\">文档</a>齐全</li>\n" +
      "  <li>QQ 群及时答疑</li>\n" +
      "  <li><a href=\"//doc.wangeditor.com/#开发人员\">开源团队</a>维护，非个人单兵作战</li>\n" +
      "</ul>\n" +
      "<h1>初见</h1>\n" +
      "<p>npm 安装 <code>npm i wangeditor --save</code> ，几行代码即可创建一个编辑器。</p>\n" +
      "<pre type=\"JavaScript\"><code>import E from 'wangeditor'\n" +
      "const editor = new E('#div1')\n" +
      "editor.create()</code></pre>\n" +
      "<p>更多使用配置，请阅读<a href=\"//doc.wangeditor.com/\">使用文档</a>。</p>\n" +
      "<h1>demo</h1>\n" +
      "<p>在线体验 demo 可到 <a href=\"https://codepen.io/collection/DNmPQV\">codepen.io/collection/DNmPQV</a> 。</p>\n" +
      "<p>注意，如果打不开，可以去查看 <a href=\"https://github.com/wangeditor-team/wangEditor/tree/master/examples\">github examples</a>\n" +
      "  的源码。</p>\n" +
      "<h1>浏览器兼容性</h1>\n" +
      "<ul>\n" +
      "  <li>兼容主流 PC 浏览器，IE11+</li>\n" +
      "  <li>不支持移动端和 ipad</li>\n" +
      "</ul>\n" +
      "<h1>遇到问题</h1>\n" +
      "<ul>\n" +
      "  <li>加入 QQ 群：164999061(人已满)，710646022(人已满)，901247714</li>\n" +
      "  <li>\n" +
      "    <a href=\"https://github.com/wangeditor-team/wangEditor/issues\" target=\"_blank\">\n" +
      "      提交问题和建议\n" +
      "    </a>\n" +
      "  </li>\n" +
      "</ul>\n" +
      "<h1>贡献代码</h1>\n" +
      "<p>欢迎非团队成员贡献代码，提交 Pull Request，请一定参考<a\n" +
      "    href=\"https://github.com/wangeditor-team/wangEditor/blob/master/docs/contribution.md\"\n" +
      "    target=\"_blank\">贡献代码流程</a>。</p>\n" +
      "<h1>谁在维护</h1>\n" +
      "<p>wangEditor 现有一个开源团队在维护，团队可以保证答疑、bug 修复和迭代效率。</p>\n" +
      "<p><a href=\"//doc.wangeditor.com/#开发人员\">查看开发团队，或想加入开发团队</a></p>\n" +
      "<h1>为我们点赞</h1>\n" +
      "<p>如果你感觉有收获，欢迎给我打赏，以激励我们更多输出优质开源内容。</p>\n" +
      "<p>\n" +
      "  <img width=\"240\" src=\"https://gitlab.inkr.xyz/debug/ti-debug/uploads/1336a5e09b28efe391f53ac2cbaf7bb9/image.png\">\n" +
      "  <img width=\"240\" src=\"https://gitlab.inkr.xyz/debug/ti-debug/uploads/cbec7d574ab25801c7f48583d9802157/image.png\">\n" +
      "</p>\n" +
      "<iframe allowfullscreen=\"true\" frameborder=\"0\" height=\"400\" src=\"//player.bilibili.com/player.html?aid=843848480&amp;bvid=BV1854y1p7NH&amp;cid=285268577&amp;page=1\" width=\"600\"></iframe></p>" +
      "<p data-we-empty-p=\"\"><br></p>";
  @override
  Widget build(BuildContext context) {
    print("获取本地数据===" + SpUtil.getString("test_sp"));
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text("html_demo"),
          ),
          body: SingleChildScrollView(
            child: Html(
              data: htmlData,
            ),
          )),
    );
  }
}
