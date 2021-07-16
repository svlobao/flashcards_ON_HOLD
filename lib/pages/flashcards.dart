import 'package:flutter/material.dart';

class Flashcards extends StatefulWidget {
  const Flashcards({Key? key}) : super(key: key);

  @override
  _FlashcardsState createState() => _FlashcardsState();
}

class _FlashcardsState extends State<Flashcards> {
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
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: SizedBox(
                  height: 350,
                  width: 250,
                  child: Card(
                      elevation: 5,
                      child: Center(
                          child: Text('あ', style: TextStyle(fontSize: 45))))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    '<',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    '?',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
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
