import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: ListTile(
                  key: const Key('kanas'),
                  leading: const Icon(Icons.arrow_right_sharp),
                  title: const Text('Hiragana & Katakana'),
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, '/kanas');
                    });
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: ListTile(
                  leading: Icon(Icons.arrow_right_sharp),
                  title: Text('JLPT - 日本語能力試験'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: ListTile(
                  leading: Icon(Icons.arrow_right_sharp),
                  title: Text('Practice it!'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
