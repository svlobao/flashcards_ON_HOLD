import 'dart:math';

import 'package:flashcards/widgets/flashcard_data.dart';
import 'package:flutter/material.dart';

class Kanas extends StatefulWidget {
  const Kanas({Key? key}) : super(key: key);

  @override
  _KanasState createState() => _KanasState();
}

class _KanasState extends State<Kanas> {
  List<FlashcardData> hiraganaCards = FlashcardLists().hiraganaCards;
  List<FlashcardData> katakanaCards = FlashcardLists().katakanaCards;
  int currentIndex = 0;

  void increaseIndex() {
    currentIndex + 1 >= hiraganaCards.length
        ? currentIndex = 0
        : currentIndex += 1;
  }

  void decreaseIndex() {
    currentIndex - 1 <= 0
        ? currentIndex = hiraganaCards.length - 1
        : currentIndex -= 1;
  }

  void randomIndex() {
    currentIndex = Random().nextInt(hiraganaCards.length);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Kanas'),
          bottom: const TabBar(
            tabs: [
              Tab(child: Text('ひらがな')),
              Tab(child: Text('カタカナ')),
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50.0),
                    child: SizedBox(
                      height: 350,
                      width: 250,
                      child: Card(
                        elevation: 4.0,
                        child: Center(
                          child: Text(
                            hiraganaCards[currentIndex].frontLabel,
                            style: const TextStyle(fontSize: 40.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              decreaseIndex();
                            });
                          },
                          child: const Text('<')),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              randomIndex();
                            });
                          },
                          child: const Text('?')),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              increaseIndex();
                            });
                          },
                          child: const Text('>')),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50.0),
                    child: SizedBox(
                      height: 350,
                      width: 250,
                      child: Card(
                        elevation: 4.0,
                        child: Center(
                          child: Text(
                            katakanaCards[currentIndex].frontLabel,
                            style: const TextStyle(fontSize: 40.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              decreaseIndex();
                            });
                          },
                          child: const Text('<')),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              randomIndex();
                            });
                          },
                          child: const Text('?')),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              increaseIndex();
                            });
                          },
                          child: const Text('>')),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget _kanaCard({}){}