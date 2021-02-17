import 'dart:async';
import 'package:flutter/material.dart';

class RaisedButtonConfig extends StatelessWidget {
  const RaisedButtonConfig({
    @required this.onePressed,
    this.childWidget,
    Timer timer,
  }) : _timer = timer;

  final Timer _timer;
  final onePressed;
  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: childWidget,
      onPressed: onePressed,
      textColor: Colors.white,
      color: Colors.blue[200],
    );
  }
}
