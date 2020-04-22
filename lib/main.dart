import 'package:dfchat/widget/fragmentWidget.dart';
import 'package:flutter/material.dart';
import 'login/login.dart';

void main() => runApp(MyApp());

/// @author 李扬
/// @title 首页
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const MaterialColor white = const MaterialColor(
      0xFFFFFFFF,
      const <int, Color>{
        50: const Color(0xFFFFFFFF),
        100: const Color(0xFFFFFFFF),
        200: const Color(0xFFFFFFFF),
        300: const Color(0xFFFFFFFF),
        400: const Color(0xFFFFFFFF),
        500: const Color(0xFFFFFFFF),
        600: const Color(0xFFFFFFFF),
        700: const Color(0xFFFFFFFF),
        800: const Color(0xFFFFFFFF),
        900: const Color(0xFFFFFFFF),
      },
    );

    return MaterialApp(
      title: 'Flutter chat',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: white,
      ),
      home: MyHomePage(title: 'dfchat'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    FragmentWidget(Colors.white),
    FragmentWidget(Colors.greenAccent),
    FragmentWidget(Colors.deepOrange),
    FragmentWidget(Colors.pink),
  ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
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
        items:<BottomNavigationBarItem>[
          new BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: _getBarText(0),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.perm_contact_calendar),
              title: _getBarText(1),),
          new BottomNavigationBarItem(
              icon: Icon(Icons.work),
              title: _getBarText(2),),
          new BottomNavigationBarItem(
              icon: Icon(Icons.person),

              title: _getBarText(3),),
        ],
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void onTabSelected(int index){
      setState(() {
        _currentIndex = index;
      });
  }

  void incrementCounter() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginDart()));
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
