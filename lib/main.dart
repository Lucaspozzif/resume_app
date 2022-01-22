import 'package:flutter/material.dart';

import 'esp.dart';
import 'info.dart';
import 'media.dart';

void main() {
  runApp(const MaterialApp(
    title: "Esse é o meu app",
    debugShowCheckedModeBanner: false,
    home: Start(),
  ));
}

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  double iconSize = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "App Portfólio",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 60)),
          Column(
            
            children: const [
              Padding(padding: EdgeInsets.all(10)),
              Icon(
                Icons.person_outline,
                size: 150,
              ),
              Text(
                "Lucas Pozzi",
                style: TextStyle(fontSize: 30),
              ),
              Text('Olá, eu sou Lucas Pozzi, desenvolvedor desse app, ele existe com a única função de servir como um currículo digital, dê uma olhada',textAlign: TextAlign.center)
            ],
          ),
          const Spacer(),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(
                  Icons.info,
                  size: iconSize,
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (c, a1, a2) => const Info(),
                      transitionsBuilder: (c, anim, a2, child) =>
                          FadeTransition(opacity: anim, child: child),
                      transitionDuration: const Duration(milliseconds: 100),
                    ),
                  );
                },
              ),
              IconButton(
                  icon: Icon(Icons.assessment, size: iconSize),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (c, a1, a2) => const Esp(),
                        transitionsBuilder: (c, anim, a2, child) =>
                            FadeTransition(opacity: anim, child: child),
                        transitionDuration: const Duration(milliseconds: 100),
                      ),
                    );
                  }),
              IconButton(
                  icon: Icon(
                    Icons.public,
                    size: iconSize,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (c, a1, a2) => const Media(),
                        transitionsBuilder: (c, anim, a2, child) =>
                            FadeTransition(opacity: anim, child: child),
                        transitionDuration: const Duration(milliseconds: 100),
                      ),
                    );
                  }),
            ],
          )
        ],
      ),
    );
  }
}
