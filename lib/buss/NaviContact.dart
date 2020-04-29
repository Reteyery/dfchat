import 'package:dfchat/util/Const.dart';
import 'package:flutter/material.dart';

/// @author 李扬
/// @title 通讯录
class NaviContactDart extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    List<String> titleString;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //隐藏返回按钮
        title: Text("通讯录",
          style: TextStyle(
            color: Const.C_TEXT_BAR,
//            fontWeight: FontWeight.bold,
          ),),
        backgroundColor: Const.C_MAIN,
      ),
      body: Center(
          child: Container(
            color: Colors.white,
            child: Text("通讯录", style: TextStyle(
                color: Const.C_MAIN,
                fontSize: 26
            ),),
          )
      )
    );
  }
}