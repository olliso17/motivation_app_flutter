import 'package:flutter/material.dart';

class ContainerIconButton extends StatelessWidget {
  ContainerIconButton({@required this.childContainer});
  final Widget childContainer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: childContainer,
    );
  }
}
