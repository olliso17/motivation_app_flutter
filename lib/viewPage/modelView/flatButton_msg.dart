import 'package:flutter/material.dart';

class CardButtonIcon extends StatelessWidget {
  CardButtonIcon(
      {@required this.imageFinally, @required this.colour, this.route});

  final String imageFinally;
  final Color colour;
  final Widget route;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: FlatButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => route,
            ),
          );
        },
        color: Colors.blue[100],
        child: Image.asset(
          imageFinally,
          color: colour,
        ),
      ),
    );
  }
}
