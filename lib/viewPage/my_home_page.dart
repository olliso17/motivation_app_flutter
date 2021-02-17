import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/PATRICIA/Desktop/motivation_app/lib/viewPage/msg.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 500,
        height: 1000,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            alignment: Alignment.center,
            image: AssetImage('images/ceu2.jpg'),
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Message(),
          ),
        ),
      ),
    );
  }
}
