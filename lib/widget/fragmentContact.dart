import 'package:dfchat/util/const.dart';
import 'package:flutter/material.dart';

/// @author 李扬
/// @title 通讯录
class FragmentContactDart extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    List<String> titleString;
    return new Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //隐藏返回按钮
        title: Text("通讯录",
          style: TextStyle(
            color: Const.C_TEXT_BAR,
//            fontWeight: FontWeight.bold,
          ),),
        backgroundColor: Const.C_MAIN,
      ),
      body: new Center(
          child: Container(
            color: Colors.white,
            child: new Text("通讯录", style: TextStyle(
                color: Const.C_MAIN,
                fontSize: 26
            ),),
          )
      )
    );
  }
}