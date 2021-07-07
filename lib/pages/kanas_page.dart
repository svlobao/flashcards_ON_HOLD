import 'package:flutter/material.dart';

class Kanas extends StatefulWidget {
  const Kanas({Key? key}) : super(key: key);

  @override
  _KanasState createState() => _KanasState();
}

class _KanasState extends State<Kanas> {
  @override
  Widget build(BuildContext context) {
    var containerHeight = MediaQuery.of(context).size.height * 0.25;
    var containerWidth = MediaQuery.of(context).size.width * 0.3;
    return Scaffold(
      appBar: AppBar(
        title: Text('Hiragana and Katakana'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: Container(
                    width: containerWidth,
                    height: containerHeight,
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(child: Text('Hiragana')),
                  ),
                  onTap: () {
                    setState(
                      () {
                        Navigator.pushNamed(context, '/hiraganas');
                      },
                    );
                  },
                ),
                InkWell(
                  child: Container(
                    width: containerWidth,
                    height: containerHeight,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(child: Text('Katakana')),
                  ),
                  onTap: () {
                    setState(
                      () {
                        Navigator.pushNamed(context, '/katakanas');
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
