import 'package:flutter/material.dart';
import 'esp.dart';
import 'info.dart';

class Media extends StatefulWidget {
  const Media({Key? key}) : super(key: key);

  @override
  MediaState createState() => MediaState();
}

class MediaState extends State<Media> {
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
                Icons.public_outlined,
                size: 150,
              ),
              Text(
                "Mídias Sociais",
                style: TextStyle(fontSize: 30),
              ),
              Text("LinkedIn - Lucas Pozzi"),
              Text("Instagram - @lucas_pozzif"),
              Text("Email - lucaspozzif20@gmail.com")
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
                    color: Colors.blue,
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
      )
    );
  }
}
