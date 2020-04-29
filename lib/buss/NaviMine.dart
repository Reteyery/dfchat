import 'package:dfchat/util/Const.dart';
import 'package:flutter/material.dart';

/// @author rete
/// @title 我的
class NaviMineDart extends StatefulWidget{

  @override
  _MineState createState() => _MineState();

}

class _MineState extends State<NaviMineDart>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //隐藏返回按钮
        title: Text("设置",
          style: TextStyle(
            color: Const.C_TEXT_BAR,
          ),),
        backgroundColor: Const.C_MAIN,
      ),
      body: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        color: Colors.black12,
        child: Column(
          children: <Widget>[
            Container(
              height: 80,
              color: Colors.white,
              padding: EdgeInsets.only(left: 12),
              child: Row(
                children: <Widget>[
                  Icon(Icons.account_circle,
                    size: 60,
                  ),
                  Padding(padding: EdgeInsets.only(left: 12)),
                  Text("信息中心",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                    ),)
                ],
              ),
            ),
            Container(
                height: 60,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                color: Colors.white,
                margin: EdgeInsets.only(top: 0.5),
                padding: EdgeInsets.only(left: 15),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.settings, size: 23, color: Const.C_MAIN),
                    Padding(padding: EdgeInsets.only(left: 12)),
                    Text("按回车键发送消息",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),),
                    Switch(value: true,
                        onChanged: null,
                        inactiveThumbColor: Colors.grey,
                        activeColor: Const.C_MAIN,
                        activeTrackColor: Const.C_GREEN
                    )
                  ],
                )
            ),
            Container(
                height: 60,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                color: Colors.white,
                margin: EdgeInsets.only(top: 0.5),
                padding: EdgeInsets.only(left: 15),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.settings, size: 23, color: Const.C_MAIN),
                    Padding(padding: EdgeInsets.only(left: 12)),
                    Text("允许多端同时在线",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),),
                    Switch(value: false,
                        onChanged: null,
                        inactiveThumbColor: Colors.grey,
                        activeColor: Const.C_MAIN,
                        activeTrackColor: Const.C_GREEN
                    )
                  ],
                )
            ),
            Container(
                height: 60,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                color: Colors.white,
                margin: EdgeInsets.only(top: 0.5),
                padding: EdgeInsets.only(left: 15),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.mode_edit, size: 23, color: Const.C_MAIN),
                    Padding(padding: EdgeInsets.only(left: 12)),
                    Text("修改密码",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),),
                  ],
                )
            ),
            Container(
                height: 60,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                color: Colors.white,
                margin: EdgeInsets.only(top: 0.5),
                padding: EdgeInsets.only(left: 15),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.favorite, size: 23, color: Const.C_MAIN),
                    Padding(padding: EdgeInsets.only(left: 12)),
                    Text("关于我们",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),),
                  ],
                )
            ),
            Container(
                height: 60,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                color: Colors.white,
                margin: EdgeInsets.only(top: 0.5),
                padding: EdgeInsets.only(left: 15),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.exit_to_app, size: 23, color: Const.C_MAIN),
                    Padding(padding: EdgeInsets.only(left: 12)),
                    Text("安全退出",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}