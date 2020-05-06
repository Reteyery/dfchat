import 'package:dfchat/util/Const.dart';
import 'package:dfchat/view/AnimatedFloatingActionButton.dart';
import 'package:flutter/material.dart';

/// @author rete
/// @title 工作
class NaviWorkDart extends StatelessWidget{

  ///创建任务
  Widget createTask() {
    return Container(
      child: FloatingActionButton(
        onPressed: null,
        heroTag: "task",
        tooltip: 'task',
        elevation: 5,
        child: Icon(Icons.subject, color: Const.C_MAIN),
      ),
    );
  }

  ///创建日程
  Widget createSchedule() {
    return Container(
      child: FloatingActionButton(
        onPressed: null,
        heroTag: "schedule",
        tooltip: 'schedule',
        elevation: 5,
        child: Icon(Icons.schedule, color: Const.C_MAIN),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //隐藏返回按钮
        title: Text("工作",
          style: TextStyle(
            color: Const.C_TEXT_BAR,
          ),),
        backgroundColor: Const.C_MAIN,
      ),
      floatingActionButton: AnimatedFloatingActionButton(
        fabButtons: <Widget>[
          createTask(),
          createSchedule()
        ],
        ///这是flutter一组内置的动画Icon,具体搜索相关api
        animatedIconData: AnimatedIcons.menu_close,
      ),
      body: GridView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 60,
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