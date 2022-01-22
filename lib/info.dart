import 'package:flutter/material.dart';
import 'esp.dart';
import 'media.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
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
              Icon(
                Icons.info_outline,
                size: 150,
              ),
              Text(
                "Informações Pessoais",
                style: TextStyle(fontSize: 30),
              ),
              Text("Nome: Lucas Araujo Pozzi Ferreira"),
              Text("Idade: 18 Anos")
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
                  color: Colors.blue,
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
