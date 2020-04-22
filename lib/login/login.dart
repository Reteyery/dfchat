
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginDart extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('this is login page'),
          backgroundColor: Colors.green,
        ),
        body: new Center(
          child: new RaisedButton(
              onPressed: (){
                Navigator.pop(context);
              } ,
              child: new Text(
                  'back',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16
              ),),
          color: Colors.blue,), //RaiseButton背景色
        ),
    );
  }

}
