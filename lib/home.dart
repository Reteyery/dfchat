import 'package:dfchat/widget/fragmentWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'login/login.dart';

class HomeDart extends StatefulWidget {
  HomeDart({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeDart> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    FragmentWidget(Colors.white),
    FragmentWidget(Colors.greenAccent),
    FragmentWidget(Colors.deepOrange),
    FragmentWidget(Colors.pink),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabSelected,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.green,
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

  void incrementCounter() {
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
