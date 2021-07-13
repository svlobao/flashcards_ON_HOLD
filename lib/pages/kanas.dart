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
        title: const Text('Hiragana & Katakana'),
        bottom: TabBar(
          tabs: [
            Tab(text: 'ひらがな'),
            Tab(text: 'カタカナ'),
          ],
        ),
      ),
      body: SafeArea(
        child: TabBarView(
          children: [
            GridView.count(
              crossAxisCount: 5,
              children: [
                Text('1'),
                Text('1'),
                Text('1'),
                Text('1'),
                Text('1'),
                Text('2'),
                Text('2'),
                Text('2'),
                Text('2'),
                Text('2'),
                Text('1'),
                Text('1'),
                Text('1'),
                Text('1'),
                Text('1'),
                Text('2'),
                Text('2'),
                Text('2'),
                Text('2'),
                Text('2'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
