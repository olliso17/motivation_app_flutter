import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  TextWidget({
    @required this.text,
    @required this.size,
    @required this.colors,
  });
  final String text;
  final double size;
  final Color colors;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Caveat',
        fontSize: size,
        fontWeight: FontWeight.bold,
        color: colors,
      ),
    );
  }
}
