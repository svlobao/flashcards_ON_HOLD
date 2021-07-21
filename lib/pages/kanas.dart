import 'dart:math';

import 'package:flashcards/widgets/flashcard_data.dart';
import 'package:flip_card/flip_card.dart';
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
  bool iconColorState = false;

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

  void playSound() {
    print('Unimplemented Warning');
  }

  void saveCard() {
    print('Unimplemented Warning');
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Kanas'),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Icon(Icons.search),
            )
          ],
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
                      child: FlipCard(
                        speed: 250,
                        front: Card(
                          elevation: 4.0,
                          child: Center(
                            child: Text(
                              hiraganaCards[currentIndex].frontLabel,
                              style: const TextStyle(fontSize: 70.0),
                            ),
                          ),
                        ),
                        back: Card(
                          elevation: 4.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 95.0),
                                child: Text(
                                  hiraganaCards[currentIndex].backLabel,
                                  style: const TextStyle(
                                      fontSize: 40.0,
                                      color: Colors.greenAccent),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 5.0),
                                child: Divider(),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 1.0),
                                      child: IconButton(
                                          onPressed: () {
                                            playSound();
                                          },
                                          icon: const Icon(Icons.volume_up)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 1.0),
                                      child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            saveCard();
                                            iconColorState = !iconColorState;
                                          });
                                        },
                                        icon: Icon(
                                          Icons.check,
                                          color: iconColorState
                                              ? Colors.greenAccent
                                              : Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.height / 8,
                        height: 40,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                decreaseIndex();
                              });
                            },
                            child: const Text('<')),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.height / 8,
                        height: 40,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                randomIndex();
                              });
                            },
                            child: const Text('?')),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.height / 8,
                        height: 40,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                increaseIndex();
                              });
                            },
                            child: const Text('>')),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 70.0),
                    child: SizedBox(
                      height: 350,
                      width: 250,
                      child: FlipCard(
                        speed: 250,
                        front: Card(
                          elevation: 4.0,
                          child: Center(
                            child: Text(
                              katakanaCards[currentIndex].frontLabel,
                              style: const TextStyle(fontSize: 50.0),
                            ),
                          ),
                        ),
                        back: Card(
                          elevation: 4.0,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 120.0),
                                child: Text(
                                  katakanaCards[currentIndex].backLabel,
                                  style: const TextStyle(
                                      fontSize: 40.0,
                                      color: Colors.greenAccent),
                                ),
                              ),
                              const Divider(),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    print('sound played');
                                  });
                                },
                                child: const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 5.0),
                                    child: Icon(Icons.volume_up_rounded)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.height / 8,
                        height: 40,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                decreaseIndex();
                              });
                            },
                            child: const Text('<')),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.height / 8,
                        height: 40,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                randomIndex();
                              });
                            },
                            child: const Text('?')),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.height / 8,
                        height: 40,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                increaseIndex();
                              });
                            },
                            child: const Text('>')),
                      ),
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
