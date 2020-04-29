import 'package:dfchat/util/Const.dart';
import 'package:flutter/material.dart';

/// @author 李扬
/// @title 消息
class NaviMessageDart extends StatefulWidget{

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<NaviMessageDart>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, //隐藏返回按钮
          title: Text("消息",
            style: TextStyle(
              color: Const.C_TEXT_BAR,
//            fontWeight: FontWeight.bold,
            ),),
          backgroundColor: Const.C_MAIN,
        ),

        body: Center(
            child: Container(
              color: Colors.white,
              child: Text("消息", style: TextStyle(
                  color: Const.C_MAIN,
                  fontSize: 26
              ),),
            )
        )
    );
  }

}