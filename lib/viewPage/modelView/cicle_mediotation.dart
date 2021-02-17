import 'package:flutter/material.dart';
import 'file:///C:/Users/PATRICIA/Desktop/motivation_app/lib/constructor/constructor_list.dart';

class CycleTimeWidget extends StatelessWidget {
  CycleTimeWidget({
    this.colours,
    @required this.timeSetting,
    @required this.radius,
    this.widgetRandom,
  });

  final Color colours;
  final TimeSetting timeSetting;
  final Widget widgetRandom;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: radius,
      backgroundColor: colours,
      //botão do cronômetro
      child: widgetRandom,
    );
  }
}
