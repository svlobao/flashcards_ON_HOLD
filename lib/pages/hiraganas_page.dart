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
      body: GridView.count(
        crossAxisCount: 5,
        children: [
          InkWell(
            child: Card(
              color: Colors.grey,
              child: Center(
                child: Text(
                  'あ',
                  style: TextStyle(color: Colors.black87, fontSize: 32.0),
                ),
              ),
            ),
            onTap: () => Navigator.pushNamed(context, '/flashcard'),
          ),
          Card(
            color: Colors.grey,
            child: Center(
              child: Text(
                'い',
                style: TextStyle(color: Colors.black87, fontSize: 32.0),
              ),
            ),
          ),
          Card(
            color: Colors.grey,
            child: Center(
              child: Text(
                'う',
                style: TextStyle(color: Colors.black87, fontSize: 32.0),
              ),
            ),
          ),
          Card(
            color: Colors.grey,
            child: Center(
              child: Text(
                'え',
                style: TextStyle(color: Colors.black87, fontSize: 32.0),
              ),
            ),
          ),
          Card(
            color: Colors.grey,
            child: Center(
              child: Text(
                'お',
                style: TextStyle(color: Colors.black87, fontSize: 32.0),
              ),
            ),
          ),
          Card(
            color: Colors.grey,
            child: Center(
              child: Text(
                'か',
                style: TextStyle(color: Colors.black87, fontSize: 32.0),
              ),
            ),
          ),
          Card(
            color: Colors.grey,
            child: Center(
              child: Text(
                'き',
                style: TextStyle(color: Colors.black87, fontSize: 32.0),
              ),
            ),
          ),
          Card(
            color: Colors.grey,
            child: Center(
              child: Text(
                'く',
                style: TextStyle(color: Colors.black87, fontSize: 32.0),
              ),
            ),
          ),
          Card(
            color: Colors.grey,
            child: Center(
              child: Text(
                'け',
                style: TextStyle(color: Colors.black87, fontSize: 32.0),
              ),
            ),
          ),
          Card(
            color: Colors.grey,
            child: Center(
              child: Text(
                'こ',
                style: TextStyle(color: Colors.black87, fontSize: 32.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
