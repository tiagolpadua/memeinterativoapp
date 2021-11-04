import 'package:flutter/material.dart';
import 'package:memeinterativoapp/screens/select_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              const Text(
                'Descobrir como você starhoje nunca foi tão fácil!',
                style: TextStyle(
                    fontSize: 24, color: Colors.red, fontFamily: 'Starjedi'),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 8, top: 20, bottom: 20),
                child: Text(
                  'Saber como você está hoje é fundamental para organizar o trabalho com o time e garantir o aprendizado em equipe!',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.red,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onPrimary: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SelectScreen();
                        },
                      ),
                    );
                  },
                  child: const Text('COMEÇAR A USAR',
                      style: TextStyle(fontSize: 16)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
