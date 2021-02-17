import 'package:flutter/material.dart';

class ContainerButtonProfile extends StatelessWidget {
  ContainerButtonProfile(
      {@required this.childButton, this.onpressed, @required this.colours});
  final Widget childButton;
  final onpressed;
  final Color colours;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      height: 70.0,
      decoration: BoxDecoration(
        color: colours,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: FlatButton(
        child: childButton,
        onPressed: onpressed,
      ),
    );
  }
}
