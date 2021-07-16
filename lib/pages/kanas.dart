import 'package:flutter/material.dart';

class Kanas extends StatefulWidget {
  const Kanas({Key? key}) : super(key: key);

  @override
  _KanasState createState() => _KanasState();
}

class _KanasState extends State<Kanas> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Kanas'),
          bottom: const TabBar(
            tabs: [
              Tab(child: Text('ひらがな')),
              Tab(child: Text('カタカナ')),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Hiragana Mini Cards')),
            Center(child: Text('Katakana Mini Cards')),
          ],
        ),
      ),
    );
  }
}
