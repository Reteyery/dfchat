import 'package:dfchat/util/const.dart';
import 'package:flutter/material.dart';

/// @author 李扬
/// @title 工作
class FragmentWorkDart extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //隐藏返回按钮
        title: Text("工作",
          style: TextStyle(
            color: Const.C_TEXT_BAR,
//            fontWeight: FontWeight.bold,
          ),),
        backgroundColor: Const.C_MAIN,
      ),
      body: GridView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 60,
//              color: Colors.red,
              child: Column(
                children: <Widget>[
                  Icon(Icons.device_hub, size: Const.S_IM, color: Const.C_MAIN),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Text("计划管理")
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 60,
//              color: Colors.orange,
              alignment: const Alignment(0, 0),
              child: Column(
                children: <Widget>[
                  Icon(Icons.schedule, size: Const.S_IM, color: Const.C_MAIN),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Text("日程")
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 60,
//              color: Colors.greenAccent,
              child: Column(
                children: <Widget>[
                  Icon(Icons.assignment, size: Const.S_IM, color: Const.C_MAIN),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Text("任务")
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: <Widget>[
                  Icon(Icons.supervisor_account, size: Const.S_IM, color: Const.C_MAIN),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Text("业务支持")
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: <Widget>[
                  Icon(Icons.library_books, size: Const.S_IM, color: Const.C_MAIN),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Text("知识库")
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: <Widget>[
                  Icon(Icons.inbox, size: Const.S_IM, color: Const.C_MAIN),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Text("网盘")
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