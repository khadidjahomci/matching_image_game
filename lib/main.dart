import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MatchingGame());
}

class MatchingGame extends StatefulWidget {
  const MatchingGame({super.key});

  @override
  State<MatchingGame> createState() => _MatchingGameState();
}

class _MatchingGameState extends State<MatchingGame> {
  int leftImg = 1;
  int rightImg = 2;
  String cond = '';

  @override
  Widget build(BuildContext context) {

    cond = leftImg == rightImg ? 'أحسنت! الصور متطابقة' : 'حاول مرة أخرى';


    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber[200],
        appBar: AppBar(
          centerTitle: true,
          title: Text('لعبة تطابق الصور'),
          backgroundColor: Colors.amber,
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Text(cond, style: TextStyle(fontFamily: 'Lalezar', fontSize: 20)),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        leftImg = Random().nextInt(10) + 1;
                      });
                    },
                    child: Image.asset('images/img$leftImg.png'),
                  ),
                ),
                
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        rightImg = Random().nextInt(10) + 1;
                      });
                    },
                    child: Image.asset('images/img$rightImg.png'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}