import 'dart:math';

import 'package:flashcards/data/flashcard_data.dart';
import 'package:flutter/material.dart';

class TripleButtons extends StatefulWidget {
  int currentIndex;
  List<FlashcardData> flashCards;

  TripleButtons(
      {Key? key, required this.currentIndex, required this.flashCards})
      : super(key: key);

  @override
  _TripleButtonsState createState() => _TripleButtonsState();
}

class _TripleButtonsState extends State<TripleButtons> {
  void increaseIndex() {
    widget.currentIndex + 1 >= widget.flashCards.length
        ? widget.currentIndex = 0
        : widget.currentIndex += 1;
  }

  void decreaseIndex() {
    widget.currentIndex - 1 <= 0
        ? widget.currentIndex = widget.flashCards.length - 1
        : widget.currentIndex -= 1;
  }

  void randomIndex() {
    widget.currentIndex = Random().nextInt(widget.flashCards.length);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
