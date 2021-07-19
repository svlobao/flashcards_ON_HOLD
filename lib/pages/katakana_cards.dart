import 'dart:core';
import 'dart:math';

import 'package:flashcards/widgets/flashcard_data.dart';
import 'package:flutter/material.dart';

class Katakana extends StatefulWidget {
  const Katakana({Key? key}) : super(key: key);

  @override
  _KatakanaState createState() => _KatakanaState();
}

class _KatakanaState extends State<Katakana> {
  List<FlashcardData> katakanaCards = [
    FlashcardData(frontLabel: 'ア', backLabel: 'A'),
    FlashcardData(frontLabel: 'イ', backLabel: 'I'),
    FlashcardData(frontLabel: 'ウ', backLabel: 'U'),
    FlashcardData(frontLabel: 'エ', backLabel: 'E'),
    FlashcardData(frontLabel: 'オ', backLabel: 'O'),
    FlashcardData(frontLabel: 'カ', backLabel: 'KA'),
    FlashcardData(frontLabel: 'キ', backLabel: 'KI'),
    FlashcardData(frontLabel: 'ク', backLabel: 'KU'),
    FlashcardData(frontLabel: 'ケ', backLabel: 'KE'),
    FlashcardData(frontLabel: 'コ', backLabel: 'KO'),
    FlashcardData(frontLabel: 'サ', backLabel: 'SA'),
    FlashcardData(frontLabel: 'シ', backLabel: 'SHI'),
    FlashcardData(frontLabel: 'ス', backLabel: 'SU'),
    FlashcardData(frontLabel: 'セ', backLabel: 'SE'),
    FlashcardData(frontLabel: 'ソ', backLabel: 'SO'),
    FlashcardData(frontLabel: 'タ', backLabel: 'TA'),
    FlashcardData(frontLabel: 'チ', backLabel: 'CHI'),
    FlashcardData(frontLabel: 'ツ', backLabel: 'TSU'),
    FlashcardData(frontLabel: 'テ', backLabel: 'TE'),
    FlashcardData(frontLabel: 'ト', backLabel: 'TO'),
    FlashcardData(frontLabel: 'ナ', backLabel: 'NA'),
    FlashcardData(frontLabel: 'ニ', backLabel: 'NI'),
    FlashcardData(frontLabel: 'ヌ', backLabel: 'NU'),
    FlashcardData(frontLabel: 'ネ', backLabel: 'NE'),
    FlashcardData(frontLabel: 'ノ', backLabel: 'NO'),
    FlashcardData(frontLabel: 'マ', backLabel: 'MA'),
    FlashcardData(frontLabel: 'ミ', backLabel: 'MI'),
    FlashcardData(frontLabel: 'ム', backLabel: 'MU'),
    FlashcardData(frontLabel: 'メ', backLabel: 'ME'),
    FlashcardData(frontLabel: 'モ', backLabel: 'MO'),
    FlashcardData(frontLabel: 'ラ', backLabel: 'RA'),
    FlashcardData(frontLabel: 'リ', backLabel: 'RI'),
    FlashcardData(frontLabel: 'ル', backLabel: 'RU'),
    FlashcardData(frontLabel: 'レ', backLabel: 'RE'),
    FlashcardData(frontLabel: 'ロ', backLabel: 'RO'),
    FlashcardData(frontLabel: 'ハ', backLabel: 'HA'),
    FlashcardData(frontLabel: 'ヒ', backLabel: 'HI'),
    FlashcardData(frontLabel: 'フ', backLabel: 'FU'),
    FlashcardData(frontLabel: 'へ', backLabel: 'HE'),
    FlashcardData(frontLabel: 'ホ', backLabel: 'HO'),
    FlashcardData(frontLabel: 'ヤ', backLabel: 'YA'),
    FlashcardData(frontLabel: 'ユ', backLabel: 'YU'),
    FlashcardData(frontLabel: 'ヨ', backLabel: 'YO'),
    FlashcardData(frontLabel: 'ワ', backLabel: 'WA'),
    FlashcardData(frontLabel: 'ヲ', backLabel: 'WO'),
    FlashcardData(frontLabel: 'ン', backLabel: 'NN'),
  ];

  @override
  Widget build(BuildContext context) {
    final Map data = ModalRoute.of(context)!.settings.arguments! as Map;
    var cardIndex = data['index'] as int;

    return Scaffold(
      appBar: AppBar(title: const Text('Katakana Flashcards')),
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
                          child: Text(
                        katakanaCards[cardIndex].frontLabel,
                        style: const TextStyle(fontSize: 45),
                      )))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      cardIndex == 0
                          ? cardIndex = katakanaCards.length - 1
                          : cardIndex -= 1;
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
                      cardIndex = Random().nextInt(katakanaCards.length);
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
                      cardIndex + 1 >= katakanaCards.length
                          ? cardIndex = 0
                          : cardIndex += 1;
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
