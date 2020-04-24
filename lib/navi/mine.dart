
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
        title: Text("DFSYNC",
        style: TextStyle(
          color: Const.C_GREEN,
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
              child: new Text("设置",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold
                ),),
            ),
          ],
        ),
      ),
    );
  }

}