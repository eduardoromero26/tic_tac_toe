import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/screens/game.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(230, 230, 230, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                child: Image.asset(
              "assets/images/logo.png",
              height: 120,
            )),
            const SizedBox(height: 32),
            const Text("Choose your play mode",
                style: TextStyle(
                  fontFamily: "Aileron",
                  fontSize: 22,
                )),
            const SizedBox(height: 44),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GameScreen()),
                );
              },
              child: Container(
                height: 60,
                width: 240,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(53, 120, 248, 1),
                        Color.fromARGB(255, 146, 198, 218),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(25.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 4,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      )
                    ]),
                child: const Center(
                  child: Text(
                    'With a Friend',
                    style: TextStyle(
                      fontFamily: "Aileron",
                      fontWeight: FontWeight.w300,
                      fontSize: 22,
                      letterSpacing: 0.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 60,
                width: 240,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(25.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 4,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      )
                    ]),
                child: const Center(
                  child: Text(
                    'With IA - Cooming Soon',
                    style: TextStyle(
                      fontFamily: "Aileron",
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                      letterSpacing: 0.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
