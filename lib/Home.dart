import 'package:dfchat/buss/NaviContact.dart';
import 'package:dfchat/buss/NaviMessage.dart';
import 'package:dfchat/buss/NaviMine.dart';
import 'package:dfchat/buss/NaviWorkDart.dart';
import 'package:dfchat/login/Login.dart';
import 'package:dfchat/util/Const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// @author rete
/// @title 主页（底部4个导航栏）
class HomeDart extends StatefulWidget {
  HomeDart({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeDart> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    NaviMessageDart(),
    NaviContactDart(),
    NaviWorkDart(),
    NaviMineDart(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabSelected,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: (Const.C_MAIN),
        backgroundColor: Theme.of(context).primaryColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: _getBarText(0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_contact_calendar),
            title: _getBarText(1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            title: _getBarText(2),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: _getBarText(3),
          ),
        ],
      ),
    );
  }

  void onTabSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void toMenu() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginDart()));
  }

  Text _getBarText(int index) {
    if (index == 0) {
      return Text("消息", style: TextStyle(color: Colors.grey));
    } else if (index == 1) {
      return Text("通讯录", style: TextStyle(color: Colors.grey));
    } else if (index == 2) {
      return Text("工作", style: TextStyle(color: Colors.grey));
    } else {
      return Text("我的", style: TextStyle(color: Colors.grey));
    }
  }
}
