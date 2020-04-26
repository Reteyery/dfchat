
import 'package:dfchat/util/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// @author 李扬
/// @title 我的
class MineDart extends StatefulWidget{
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MineDart>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,//隐藏返回按钮
        title: Text("设置",
        style: TextStyle(
          color: Const.C_MAIN,
//          fontWeight: FontWeight.bold,
        ),),
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black12,
        child: Column(
          children: <Widget>[
            new Container(
              height: 80,
              color: Colors.white,
              padding: EdgeInsets.only(left: 12),
              child: new Row(
                children: <Widget>[
                new Icon(Icons.account_circle,
                size: 60,
                ),
                Padding(padding: EdgeInsets.only(left: 12)),
                new Text("信息中心",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                  ),)],
              ),
            ),
            new Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                margin: EdgeInsets.only(top:0.5),
                padding: EdgeInsets.only(left: 15),
                alignment: Alignment.centerLeft,
                child: new Row(
                  children: <Widget>[
                    new Icon(Icons.settings, size: 23, color: Const.C_MAIN),
                    Padding(padding: EdgeInsets.only(left: 12)),
                    new Text("按回车键发送消息",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),),
                    new Switch(value: true,
                      onChanged: null,
                      inactiveThumbColor: Colors.grey,
                      activeColor: Const.C_MAIN,
                      activeTrackColor: Const.C_GREEN
                    )
                  ],
                )
            ),
            new Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                margin: EdgeInsets.only(top:0.5),
                padding: EdgeInsets.only(left: 15),
                alignment: Alignment.centerLeft,
                child: new Row(
                  children: <Widget>[
                    new Icon(Icons.settings, size: 23, color: Const.C_MAIN),
                    Padding(padding: EdgeInsets.only(left: 12)),
                    new Text("允许多端同时在线",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),),
                    new Switch(value: false,
                      onChanged: null,
                      inactiveThumbColor: Colors.grey,
                      activeColor: Const.C_MAIN,
                      activeTrackColor: Const.C_GREEN
                    )
                  ],
                )
            ),
            new Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              margin: EdgeInsets.only(top:0.5),
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
                child: new Row(
                  children: <Widget>[
                    new Icon(Icons.mode_edit, size: 23, color: Const.C_MAIN),
                    Padding(padding: EdgeInsets.only(left: 12)),
                    new Text("修改密码",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                      ),),
                  ],
                )
            ),
            new Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              margin: EdgeInsets.only(top:0.5),
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
                child: new Row(
                  children: <Widget>[
                    new Icon(Icons.favorite, size: 23, color: Const.C_MAIN),
                    Padding(padding: EdgeInsets.only(left: 12)),
                    new Text("关于我们",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                      ),),
                  ],
                )
            ),
            new Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              margin: EdgeInsets.only(top:0.5),
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
              child: new Row(
                children: <Widget>[
                  new Icon(Icons.exit_to_app, size: 23, color: Const.C_MAIN),
                  Padding(padding: EdgeInsets.only(left: 12)),
                  new Text("安全退出",
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