import 'package:flutter/material.dart';
import 'dart:math';

class Flashcards extends StatefulWidget {
  const Flashcards({Key? key}) : super(key: key);

  @override
  _FlashcardsState createState() => _FlashcardsState();
}

class _FlashcardsState extends State<Flashcards> {
  int currentIndex = 0;

  List<String> flashcards = [
    'あ',
    'い',
    'う',
    'え',
    'お',
    'か',
    'き',
    'く',
    'け',
    'こ',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flashcards')),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Center(child: Text('Some text')),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: SizedBox(
                  height: 350,
                  width: 250,
                  child: Card(
                      elevation: 5,
                      child: Center(
                          child: Text(flashcards[currentIndex],
                              style: const TextStyle(fontSize: 45))))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      currentIndex == 0
                          ? currentIndex = flashcards.length - 1
                          : currentIndex -= 1;
                    });
                  },
                  child: const Text(
                    '<',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = Random().nextInt(flashcards.length);
                    });
                  },
                  child: const Text(
                    '?',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      currentIndex + 1 >= flashcards.length
                          ? currentIndex = 0
                          : currentIndex += 1;
                    });
                  },
                  child: const Text(
                    '>',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
