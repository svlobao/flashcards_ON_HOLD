import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class FlashcardPagaTemplate extends StatefulWidget {
  const FlashcardPagaTemplate({Key? key}) : super(key: key);

  @override
  _FlashcardState createState() => _FlashcardState();
}

class _FlashcardState extends State<FlashcardPagaTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            FlipCard(
              front: Column(
                children: [
                  Flexible(
                    flex: 3,
                    child: Text(
                      'あ',
                      style: TextStyle(color: Colors.black, fontSize: 40.0),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Text(
                      'Hint: it is a vowel',
                      style:
                          TextStyle(color: Colors.greenAccent, fontSize: 15.0),
                    ),
                  ),
                ],
              ),
              back: Column(
                children: [
                  Flexible(
                    flex: 3,
                    child: Text(
                      'A',
                      style: TextStyle(color: Colors.black, fontSize: 40.0),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Text(
                      'A, the first kana from the vowel family',
                      style:
                          TextStyle(color: Colors.greenAccent, fontSize: 15.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
