import 'package:flutter/material.dart';
import 'file:///C:/Users/PATRICIA/Desktop/motivation_app/lib/viewPage/my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mensagens de motivação',
      theme: ThemeData(fontFamily: 'Sriracha'),
      home: MyHomePage(),
    );
  }
}
