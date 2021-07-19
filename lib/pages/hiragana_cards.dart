// import 'dart:core';
// import 'dart:math';

// import 'package:flashcards/State%20Management/flashcard_state.dart';
// import 'package:flashcards/widgets/flashcard_data.dart';
// import 'package:flutter/material.dart';

// class Hiragana extends StatefulWidget {
//   const Hiragana({Key? key}) : super(key: key);

//   @override
//   _HiraganaState createState() => _HiraganaState();
// }

// class _HiraganaState extends State<Hiragana> {
//   List<FlashcardData> hiraganaCards = [
//     FlashcardData(frontLabel: 'あ', backLabel: 'A'),
//     FlashcardData(frontLabel: 'い', backLabel: 'I'),
//     FlashcardData(frontLabel: 'う', backLabel: 'U'),
//     FlashcardData(frontLabel: 'え', backLabel: 'E'),
//     FlashcardData(frontLabel: 'お', backLabel: 'O'),
//     FlashcardData(frontLabel: 'か', backLabel: 'KA'),
//     FlashcardData(frontLabel: 'き', backLabel: 'KI'),
//     FlashcardData(frontLabel: 'く', backLabel: 'KU'),
//     FlashcardData(frontLabel: 'け', backLabel: 'KE'),
//     FlashcardData(frontLabel: 'こ', backLabel: 'KO'),
//     FlashcardData(frontLabel: 'さ', backLabel: 'SA'),
//     FlashcardData(frontLabel: 'し', backLabel: 'SHI'),
//     FlashcardData(frontLabel: 'す', backLabel: 'SU'),
//     FlashcardData(frontLabel: 'せ', backLabel: 'SE'),
//     FlashcardData(frontLabel: 'そ', backLabel: 'SO'),
//     FlashcardData(frontLabel: 'た', backLabel: 'TA'),
//     FlashcardData(frontLabel: 'ち', backLabel: 'CHI'),
//     FlashcardData(frontLabel: 'つ', backLabel: 'TSU'),
//     FlashcardData(frontLabel: 'て', backLabel: 'TE'),
//     FlashcardData(frontLabel: 'と', backLabel: 'TO'),
//     FlashcardData(frontLabel: 'な', backLabel: 'NA'),
//     FlashcardData(frontLabel: 'に', backLabel: 'NI'),
//     FlashcardData(frontLabel: 'ぬ', backLabel: 'NU'),
//     FlashcardData(frontLabel: 'ね', backLabel: 'NE'),
//     FlashcardData(frontLabel: 'の', backLabel: 'NO'),
//     FlashcardData(frontLabel: 'ま', backLabel: 'MA'),
//     FlashcardData(frontLabel: 'み', backLabel: 'MI'),
//     FlashcardData(frontLabel: 'む', backLabel: 'MU'),
//     FlashcardData(frontLabel: 'め', backLabel: 'ME'),
//     FlashcardData(frontLabel: 'も', backLabel: 'MO'),
//     FlashcardData(frontLabel: 'ら', backLabel: 'RA'),
//     FlashcardData(frontLabel: 'り', backLabel: 'RI'),
//     FlashcardData(frontLabel: 'る', backLabel: 'RU'),
//     FlashcardData(frontLabel: 'れ', backLabel: 'RE'),
//     FlashcardData(frontLabel: 'ろ', backLabel: 'RO'),
//     FlashcardData(frontLabel: 'は', backLabel: 'HA'),
//     FlashcardData(frontLabel: 'ひ', backLabel: 'HI'),
//     FlashcardData(frontLabel: 'ふ', backLabel: 'FU'),
//     FlashcardData(frontLabel: 'へ', backLabel: 'HE'),
//     FlashcardData(frontLabel: 'ほ', backLabel: 'HO'),
//     FlashcardData(frontLabel: 'や', backLabel: 'YA'),
//     FlashcardData(frontLabel: 'ゆ', backLabel: 'YU'),
//     FlashcardData(frontLabel: 'よ', backLabel: 'YO'),
//     FlashcardData(frontLabel: 'わ', backLabel: 'WA'),
//     FlashcardData(frontLabel: 'を', backLabel: 'WO'),
//     FlashcardData(frontLabel: 'ん', backLabel: 'NN'),
//   ];

//   int currentIndex = 0;
//   Map data = {};

//   final indexBloc = FlashcardState();

//   void increaseIndex() {
//     currentIndex + 1 >= hiraganaCards.length
//         ? currentIndex = 0
//         : currentIndex += 1;
//   }

//   void randomIndex() {
//     currentIndex = Random().nextInt(hiraganaCards.length);
//   }

//   void decreaseIndex() {
//     currentIndex - 1 <= 0
//         ? currentIndex = hiraganaCards.length
//         : currentIndex -= 1;
//   }

//   @override
//   Widget build(BuildContext context) {
//     data = ModalRoute.of(context)!.settings.arguments! as Map;
//     currentIndex = data['index'] as int;

//     String cardFrontLabel = hiraganaCards[currentIndex].frontLabel;

//     return Scaffold(
//       appBar: AppBar(title: const Text('Hiragana Flashcards')),
//       body: SafeArea(
//         child: Column(
//           children: [
//             const Padding(
//               padding: EdgeInsets.symmetric(vertical: 15.0),
//               child: Center(child: Text('Some text')),
//             ),
//             StreamBuilder(
//                 stream: indexBloc.indexStream,
//                 builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
//                   return Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 15.0),
//                     child: SizedBox(
//                         height: 350,
//                         width: 250,
//                         child: Card(
//                             elevation: 5,
//                             child: Center(
//                                 child: Text(
//                               cardFrontLabel,
//                               style: const TextStyle(fontSize: 45),
//                             )))),
//                   );
//                 }),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     indexBloc.indexSink.add(currentIndex);
//                   },
//                   child: const Text(
//                     '<',
//                     style: TextStyle(fontSize: 15),
//                   ),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       randomIndex();
//                       print(currentIndex);
//                     });
//                     ;
//                   },
//                   child: const Text(
//                     '?',
//                     style: TextStyle(fontSize: 15),
//                   ),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       increaseIndex();
//                       print(currentIndex);
//                     });
//                   },
//                   child: const Text(
//                     '>',
//                     style: TextStyle(fontSize: 15),
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
