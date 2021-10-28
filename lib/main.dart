import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meme Interativo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 80),
                child: Image(image: AssetImage('assets/img-tela-home.jpeg')),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                child: Text(
                  'Descobrir como você starhoje nunca foi tão fácil!',
                  style: TextStyle(fontSize: 24, color: Colors.white, fontFamily: 'Starjedi'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                child: Text(
                  'Saber como você está hoje é fundamental para organizar o trabalho com o time e garantir o aprendizado em equipe!',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                    ),
                    onPressed: () {
                      // Respond to button press
                    },
                    child: const Text('COMEÇAR A USAR', style: TextStyle(fontSize: 16)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SelectPage extends StatelessWidget {
  const SelectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
