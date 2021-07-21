import 'package:flashcards/data/flashcard_data.dart';
import 'package:flashcards/widgets/flashcards.dart';
import 'package:flashcards/widgets/triple_buttons.dart';
import 'package:flutter/material.dart';

class Kanas extends StatefulWidget {
  const Kanas({Key? key}) : super(key: key);

  @override
  _KanasState createState() => _KanasState();
}

class _KanasState extends State<Kanas> {
  List<FlashcardData> hiraganaCards = FlashcardLists().hiraganaCards;
  List<FlashcardData> katakanaCards = FlashcardLists().katakanaCards;

  List<int> savedHiraganaCards = [];
  List<int> savedKatakanaCards = [];

  int currentIndex = 0;
  bool iconColorState = false;

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
                      child: CustomCard(
                        frontLabel: hiraganaCards[currentIndex].frontLabel,
                        backLabel: hiraganaCards[currentIndex].backLabel,
                        savedCards: savedHiraganaCards,
                        currentIndex: currentIndex,
                      ),
                    ),
                  ),
                  TripleButtons(
                    currentIndex: currentIndex,
                    flashCards: hiraganaCards,
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
                      child: CustomCard(
                        frontLabel: katakanaCards[currentIndex].frontLabel,
                        backLabel: katakanaCards[currentIndex].backLabel,
                        savedCards: savedKatakanaCards,
                        currentIndex: currentIndex,
                      ),
                    ),
                  ),
                  TripleButtons(
                      currentIndex: currentIndex, flashCards: katakanaCards),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
