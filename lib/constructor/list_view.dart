import 'dart:math';

import 'file:///C:/Users/PATRICIA/Desktop/motivation_app/lib/constructor/constructor_list.dart';

class ListViewCreate {
  List<ConstructorList> _listView = [
    ConstructorList(
      stringList:
          '“  A felicidade não vem da posse ou do domínio, mas de um coração sábio e dedicado.” – Chico Xavier',
    ),
    ConstructorList(
      stringList:
          '“  Se Jesus nos recomendou amar os inimigos, imaginemos com que imenso amor nos compete amar aqueles que nos oferecem o coração!” – Chico Xavier',
    ),
    ConstructorList(
      stringList:
          '“ Se as críticas dirigidas a você são verdadeiras, não reclame; se não são, não ligue para elas.” – Chico Xavier',
    ),
    ConstructorList(
      stringList:
          '“ A felicidade do amanhã começa no pensamento que cultivares agora. Abraça o ideal elevado, entregando-te ao Bem possível. No final, a vitória será sempre do amor." – Chico Xavier',
    ),
    ConstructorList(
      stringList:
          '“ Que eu não perca a beleza e a alegria de ver, mesmo sabendo que muitas lágrimas brotarão dos meus olhos e escorrerão por minha alma.” – Chico Xavier',
    ),
    ConstructorList(
      stringList:
          '“ Seja qual for a dificuldade, conserve a calma, trabalhando, porque, em todo problema, a serenidade é o teto da alma, pedindo o serviço por solução.” – Chico Xavier',
    ),
    ConstructorList(
      stringList:
          '“ Quando você se observar, à beira do desânimo, acelere o passo para frente, proibindo-se parar.” Chico Xavier',
    ),
    ConstructorList(
      stringList:
          '“ Seja qual for a dificuldade, conserve a calma, trabalhando, porque, em todo problema, a serenidade é o teto da alma, pedindo o serviço por solução.” – Chico Xavier',
    ),
    ConstructorList(
      stringList:
          '" Não permita que os outros tire a sua paz. A paz vem de dentro de você mesmo. Não procure à sua volta."- Buda',
    ),
    ConstructorList(
      stringList:
          '" Nem teus piores inimigos podem fazer tanto dano como teus próprios pensamentos."- Buda',
    ),
    ConstructorList(
      stringList:
          '" Você, o seu ser, tanto quanto qualquer pessoa em todo o universo, merece o seu amor e sua afeição." - Buda',
    ),
    ConstructorList(
      stringList:
          '" Jamais, em todo o mundo, o ódio acabou com o ódio. O que acaba com o ódio é o amor." - Buda',
    ),
    ConstructorList(
      stringList:
          '" Tudo o que acontece no universo tem uma razão de ser; um objetivo. Nós como seres humanos, temos uma só lição na vida: seguir em frente e ter a certeza de que apesar de as vezes estar no escuro, o sol vai voltar a brilhar." - Irmã Dulce',
    ),
    ConstructorList(
      stringList:
          '" Ame simplesmente, porque nada nem ninguém pode acabar com um amor sem explicação!" - Irmã Dulce',
    ),
    ConstructorList(
      stringList:
          '" As pessoas que espalham amor, não têm tempo nem disposição para jogar pedras." - Irmã Dulce',
    ),
    ConstructorList(
      stringList:
          '" Sempre que puder, fale de amor e com amor para alguém. Faz bem aos ouvidos de quem ouve e à alma de quem fala." - Irmã Dulce ',
    ),
    ConstructorList(
      stringList:
          '" O que eu faço é uma gota no meio de um oceano. Mas sem ela, o oceano será menor." - Madre Teresa de Calcutá',
    ),
    ConstructorList(
      stringList:
          '" Todas as nossas palavras serão inúteis se não brotarem do fundo do coração. As palavras que não dão luz aumentam a escuridão." - Madre Teresa de Calcutá',
    ),
    ConstructorList(
      stringList:
          '" Não é o quanto fazemos, mas quanto amor colocamos naquilo que fazemos. Não é o quanto damos, mas quanto amor colocamos em dar." - Madre Teresa de Calcutá ',
    ),
    ConstructorList(
      stringList:
          '" O bem que você faz hoje, pode ser esquecido amanhã. Faça-o assim mesmo. Veja que, ao final das contas, é tudo entre você e Deus! Nunca foi entre você e os outros."- Madre Teresa de Calcutá',
    ),
    ConstructorList(
      stringList:
          '" Não julgueis segundo a aparência, e sim pela reta justiça." - Jesus Cristo',
    ),
    ConstructorList(
      stringList: '" Amai-vos uns aos outros, como eu vos amei." - Jesus',
    ),
    ConstructorList(
      stringList:
          '" Nunca faça para os outros o que você não gostaria que fizessem para você." - Jesus',
    ),
  ];

  int indexNum = 0;
  String getWarning() {
    // ignore: unnecessary_statements
    if (indexNum >= _listView.length) {
      return _listView[0].stringList;
    } else {
      return _listView[Random().nextInt(_listView.length)].stringList;
    }
  }

  // AssetImage getImage() {
  //   if (indexNum >= _listView.length) {
  //     return _listView[0].imagesRandom;
  //   } else {
  //     return _listView[Random().nextInt(_listView.length)].imagesRandom;
  //   }
  // }
}
