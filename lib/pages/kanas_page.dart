import 'package:flutter/material.dart';

class Kanas extends StatefulWidget {
  const Kanas({Key? key}) : super(key: key);

  @override
  _KanasState createState() => _KanasState();
}

class _KanasState extends State<Kanas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hiragana and Katakana'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [],
        ),
      )),
    );
  }
}
