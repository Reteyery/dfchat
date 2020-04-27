import 'package:dfchat/util/const.dart';
import 'package:flutter/material.dart';

/// @author 李扬
/// @title 工作
class FragmentWorkDart extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    List<String> titleString;
    return new Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //隐藏返回按钮
        title: Text("工作",
          style: TextStyle(
            color: Const.C_TEXT_BAR,
//            fontWeight: FontWeight.bold,
          ),),
        backgroundColor: Const.C_MAIN,
      ),
      body: new GridView(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(top: 30),
              height: 60,
//              color: Colors.red,
              child: new Column(
                children: <Widget>[
                  new Icon(Icons.device_hub, size: Const.S_IM, color: Const.C_MAIN),
                  new Padding(padding: EdgeInsets.only(top: 5)),
                  new Text("计划管理")
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.only(top: 30),
              height: 60,
//              color: Colors.orange,
              alignment: const Alignment(0, 0),
              child: new Column(
                children: <Widget>[
                  new Icon(Icons.schedule, size: Const.S_IM, color: Const.C_MAIN),
                  new Padding(padding: EdgeInsets.only(top: 5)),
                  new Text("日程")
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.only(top: 30),
              height: 60,
//              color: Colors.greenAccent,
              child: new Column(
                children: <Widget>[
                  new Icon(Icons.assignment, size: Const.S_IM, color: Const.C_MAIN),
                  new Padding(padding: EdgeInsets.only(top: 5)),
                  new Text("任务")
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.only(top: 10),
              child: new Column(
                children: <Widget>[
                  new Icon(Icons.supervisor_account, size: Const.S_IM, color: Const.C_MAIN),
                  new Padding(padding: EdgeInsets.only(top: 5)),
                  new Text("业务支持")
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.only(top: 10),
              child: new Column(
                children: <Widget>[
                  new Icon(Icons.library_books, size: Const.S_IM, color: Const.C_MAIN),
                  new Padding(padding: EdgeInsets.only(top: 5)),
                  new Text("知识库")
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.only(top: 10),
              child: new Column(
                children: <Widget>[
                  new Icon(Icons.inbox, size: Const.S_IM, color: Const.C_MAIN),
                  new Padding(padding: EdgeInsets.only(top: 5)),
                  new Text("网盘")
                ],
              ),
            )

          ],
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1
          )),
    );
  }
}