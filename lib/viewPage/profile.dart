import 'package:flutter/material.dart';
import 'modelView/container_button_profile.dart';
import 'modelView/text_widget_profile.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contato'),
      ),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextWidget(
                  text: 'Caso você precise contactar um psicólogo:',
                  size: 30.0,
                  colors: Colors.blue[900],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                width: 200.0,
                height: 200.0,
                child: Column(
                  children: [
                    CircleAvatar(
                      maxRadius: 50,
                      backgroundColor: Colors.blue[300],
                      backgroundImage: AssetImage('images/meditation.png'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextWidget(
                      text: 'Fulano(a) de Tal',
                      size: 35.0,
                      colors: Colors.blue[900],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ContainerButtonProfile(
                colours: Colors.blue,
                childButton: TextWidget(
                  text: 'Linkedin',
                  size: 30,
                  colors: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ContainerButtonProfile(
                colours: Colors.green,
                childButton: TextWidget(
                  text: 'WhatsApp',
                  size: 30,
                  colors: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
