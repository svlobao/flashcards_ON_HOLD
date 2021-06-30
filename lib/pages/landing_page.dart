import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                color: Colors.amber,
                padding: EdgeInsets.all(30.0),
                child: Text('One'),
              ),
            ),
            Expanded(child: SizedBox(height: 320)),
            Expanded(
              child: Container(
                color: Colors.pinkAccent,
                padding: EdgeInsets.all(30.0),
                child: Text('Two'),
              ),
            ),
            Expanded(child: SizedBox(height: 40)),
            Expanded(
              child: Container(
                color: Colors.blueGrey,
                padding: EdgeInsets.all(30.0),
                child: Text('Two'),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
