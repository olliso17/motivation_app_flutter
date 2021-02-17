import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import '../constructor/constructor_list.dart';
import 'modelView/buttons_meditation_count.dart';
import 'modelView/cicle_mediotation.dart';

class MeditationCounting extends StatefulWidget {
  @override
  _MeditationCountingState createState() => _MeditationCountingState();
}

class _MeditationCountingState extends State<MeditationCounting> {
  TimeSetting timeSetting = TimeSetting('${15}', 15, [
    Colors.blue[300],
    Colors.blue[100],
  ]);

  static int oneMinute = 60;

  Timer _timer;

  void viewStopwatch() {
    setState(() =>
        timeSetting.text = '${timeSetting.timeFinally - 1} : ${oneMinute}');
  }

  void restartStopwatch() async {
    _timer.cancel();
    timeSetting.text = '${15}';
    if (timeSetting.text == '${15}') {
      timeSetting.timeFinally = 15;
      oneMinute = 60;
    }
  }

  void countdown() {
    _timer = new Timer.periodic(
      Duration(seconds: 1),
      (Timer timer) {
        oneMinute--;
        if (oneMinute >= 0) {
          viewStopwatch();
        }
        if (oneMinute <= 0) {
          timeSetting.timeFinally--;
          oneMinute = 60;
          timer.runtimeType;
        }
        if (timeSetting.timeFinally <= 0) {
          timer.cancel();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meditar'),
        backgroundColor: Colors.blue[200],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            alignment: Alignment.center,
            image: AssetImage('images/ceu2.jpg'),
          ),
        ),
        child: SafeArea(
          child: Container(
            width: 500,
            height: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CycleTimeWidget(
                  radius: 120.0,
                  colours: timeSetting
                      .color[Random().nextInt(timeSetting.color.length)],
                  widgetRandom: CycleTimeWidget(
                    radius: 110.0,
                    colours: timeSetting
                        .color[Random().nextInt(timeSetting.color.length)],
                    widgetRandom: CycleTimeWidget(
                      radius: 100.0,
                      colours: timeSetting
                          .color[Random().nextInt(timeSetting.color.length)],
                      widgetRandom: Text(
                        timeSetting.text,
                        style: TextStyle(fontSize: 42, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RaisedButtonConfig(
                      childWidget: Icon(Icons.play_arrow),
                      onePressed: () {
                        countdown();
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RaisedButtonConfig(
                      childWidget: Icon(Icons.stop),
                      timer: _timer,
                      onePressed: () {
                        _timer.cancel();
                      },
                    ),
                  ],
                ),
                RaisedButtonConfig(
                  childWidget: Text('Reiniciar'),
                  onePressed: () {
                    setState(() {
                      restartStopwatch();
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
