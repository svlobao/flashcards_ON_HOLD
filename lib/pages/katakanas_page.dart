import 'package:flutter/material.dart';

class Katakanas extends StatefulWidget {
  const Katakanas({Key? key}) : super(key: key);

  @override
  _KatakanasState createState() => _KatakanasState();
}

class _KatakanasState extends State<Katakanas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Katakanas Flashcards'),
      ),
      body: Center(
        child: Container(
          child: Text('Katakans in gridview'),
        ),
      ),
    );
  }
}
