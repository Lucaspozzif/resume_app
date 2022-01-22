import 'package:flutter/material.dart';
import 'info.dart';
import 'media.dart';

class Esp extends StatefulWidget {
  const Esp({Key? key}) : super(key: key);

  @override
  _EspState createState() => _EspState();
}

class _EspState extends State<Esp> {
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
                Icons.assessment_outlined,
                size: 150,
              ),
              Text(
                "Especializações",
                style: TextStyle(fontSize: 30),
              ),
              Text("Desenvolvimento de Sites (2 Anos)"),
              Text("Desenvolvimento de Apps (15 dias)"),
              Text("Fluente em Inglês"),
              Text("Intermediário em Japonês"),
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
                  icon: Icon(Icons.assessment, size: iconSize, color: Colors.blue,),
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
