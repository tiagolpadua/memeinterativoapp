import 'package:flutter/material.dart';
import 'package:memeinterativoapp/screens/result_screen.dart';

List items = [
  {
    'titulo': 'Anakin',
    'imagem': 'assets/images/1.jpg',
    'mensagem': 'Você está pegando fogo hoje!'
  },
  {
    'titulo': 'Han Solo',
    'imagem': 'assets/images/2.jpg',
    'mensagem': 'Malandro'
  },
  {'titulo': 'Baby Yoda', 'imagem': 'assets/images/3.jpg', 'mensagem': 'Fofo'},
  {
    'titulo': 'Luke',
    'imagem': 'assets/images/4.jpg',
    'mensagem': 'Carregando o time nas costas'
  },
  {
    'titulo': 'Princesa Leia',
    'imagem': 'assets/images/5.jpg',
    'mensagem': 'Bela e Pronta para atirar no primeiro que discordar'
  },
  {
    'titulo': 'StormTrooper',
    'imagem': 'assets/images/6.jpg',
    'mensagem': 'Não sabendo que era impossível errar, foi lá e errou'
  },
  {
    'titulo': 'C3PO e R2D2',
    'imagem': 'assets/images/7.jpg',
    'mensagem': 'Uma máquina de produtividade'
  },
  {
    'titulo': 'Darth Vader',
    'imagem': 'assets/images/8.jpg',
    'mensagem': 'A ponto de estrangular alguém'
  },
  {
    'titulo': 'Palpatine',
    'imagem': 'assets/images/9.jpg',
    'mensagem': 'Destruído por fora mas feliz por dentro'
  },
];

class SelectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var selectItems = items.map((item) {
      final idx = items.indexOf(item);
      return SelectItem(Key(idx.toString()), idx, item);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("StarToday"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 25),
                child: Text('De 1 até 9, como você se sente hoje?',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red)),
              ),
              Align(
                alignment: Alignment.center,
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  children: selectItems,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectItem extends StatelessWidget {
  final dynamic item;
  final int index;

  const SelectItem(Key key, this.index, this.item) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(
              item['titulo'],
              item['imagem'],
              item['mensagem'],
            ),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.all(2),
        child: Stack(alignment: Alignment.bottomRight, children: [
          Image.asset(item['imagem']),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                '$index',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 6
                    ..color = Colors.black,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                '$index',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
