import 'package:dfchat/login/login.dart';
import 'package:dfchat/util/const.dart';
import 'package:dfchat/widget/fragmentContact.dart';
import 'package:dfchat/widget/fragmentMessage.dart';
import 'package:dfchat/widget/fragmentMine.dart';
import 'package:dfchat/widget/fragmentWorkDart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// @author 李扬
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
    FragmentMessageDart(),
    FragmentContactDart(),
    FragmentWorkDart(),
    FragmentMineDart(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: toMenu,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabSelected,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: (Const.C_MAIN),
        backgroundColor: Theme.of(context).primaryColor,
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: _getBarText(0),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.perm_contact_calendar),
            title: _getBarText(1),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.work),
            title: _getBarText(2),
          ),
          new BottomNavigationBarItem(
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
