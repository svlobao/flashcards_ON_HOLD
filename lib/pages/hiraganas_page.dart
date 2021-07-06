import 'package:flutter/material.dart';

class Hiraganas extends StatefulWidget {
  const Hiraganas({Key? key}) : super(key: key);

  @override
  _HiraganasState createState() => _HiraganasState();
}

class _HiraganasState extends State<Hiraganas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hiragana Flashcards'),
      ),
      body: Center(
        child: Container(
          child: Text('Hiraganas in gridview'),
        ),
      ),
    );
  }
}
