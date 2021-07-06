import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.card_giftcard_rounded),
              title: Text('Hiragana and Katakana'),
              subtitle: Text('Learn the Japanese writting systems'),
              onTap: () => Navigator.pushNamed(context, '/login'),
            ),
            ListTile(
              leading: Icon(Icons.card_giftcard_rounded),
              title: Text('Vocabulary'),
              subtitle: Text('Beginner words to be known'),
              onTap: () => Navigator.pushNamed(context, '/login'),
            ),
            ListTile(
              leading: Icon(Icons.card_giftcard_rounded),
              title: Text('Grammar'),
              subtitle:
                  Text('Keep it simple: How to write basic Japanese phrases'),
              onTap: () => Navigator.pushNamed(context, '/login'),
            ),
          ],
        ),
      )),
    );
  }
}
