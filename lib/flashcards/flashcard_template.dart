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
                front: Center(
                  child: Text('Hiragana Character'),
                ),
                back: Center(
                  child: Container(
                    child: Text('Hiragana Romanization'),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
