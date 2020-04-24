
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
      ),
    );
  }

}