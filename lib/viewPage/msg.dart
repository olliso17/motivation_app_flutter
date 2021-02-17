import 'package:flutter/material.dart';
import 'file:///C:/Users/PATRICIA/Desktop/motivation_app/lib/constructor/list_view.dart';
import 'package:motivation_app/viewPage/modelView/container_icon_msg.dart';
import 'package:motivation_app/viewPage/modelView/flatButton_msg.dart';
import 'package:motivation_app/viewPage/profile.dart';

import 'meditation_min.dart';

ListViewCreate _listViewCreate = ListViewCreate();

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  Text textRandom() {
    return Text(
      _listViewCreate.getWarning(),
      textAlign: TextAlign.justify,
      style: TextStyle(
        fontSize: 25,
        fontFamily: 'Sriracha',
        color: Colors.blue[900],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Center(
          child: Text(
            'Mensagens de reflexão',
            style: TextStyle(
              fontFamily: 'Caveat',
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white54,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 330,
          height: 420,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: textRandom(),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: FloatingActionButton(
                backgroundColor: Colors.white12,
                onPressed: () {
                  setState(() {
                    textRandom();
                  });
                },
                child: Image.asset(
                  'images/nuvem.png',
                ),
              ),
            ),
            Center(
              child: Container(
                width: 220,
                height: 60,
                decoration: BoxDecoration(
                  gradient: LinearGradient(stops: [
                    0.3,
                    0.5,
                    1
                  ], colors: [
                    Colors.blue[50],
                    Colors.blue[100],
                    Colors.blue[200],
                  ]),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ContainerIconButton(
                      childContainer: CardButtonIcon(
                        imageFinally: 'images/meditation.png',
                        colour: Colors.blue[300],
                        route: MeditationCounting(),
                      ),
                    ),
                    ContainerIconButton(
                      childContainer: CardButtonIcon(
                        colour: Colors.blue[300],
                        imageFinally: 'images/peace.png',
                        route: Profile(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.info,
                color: Colors.black26,
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: new Text("links das imagens"),
                      content: new Text(
                          ' href=https://br.freepik.com/fotos/fundo>Fundo foto criado por mrsiraphol - br.freepik.com, href=https://br.freepik.com/fotos/fundo>Fundo foto criado por mrsiraphol - br.freepik.com, href=https://br.freepik.com/fotos/abstrato>Abstrato foto criado por lifeforstock - br.freepik.com, href=https://br.freepik.com/fotos/verao>Verão foto criado por lifeforstock - br.freepik.com, href=https://br.freepik.com/fotos/fundo>Fundo foto criado por mrsiraphol - br.freepik.com, href=https://br.freepik.com/vetores/fundo>Fundo vetor criado por vectorpouch - br.freepik.com, https://icons8.com.br/icons/set/sol'),
                      actions: [
                        FlatButton(
                          child: new Text("Fechar"),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ],
                    );
                  },
                );
              },
            )
          ],
        )
      ],
    );
  }
}
