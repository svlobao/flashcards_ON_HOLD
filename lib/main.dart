import 'package:flutter/material.dart';

import 'pages/homepage.dart';
import 'pages/kanas.dart';

void main() => runApp(const Kanadventures());

class Kanadventures extends StatelessWidget {
  const Kanadventures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/homepage',
      routes: {
        '/homepage': (context) => const Homepage(),
        '/kanas': (context) => const Kanas(),
      },
      theme: ThemeData.dark(),
    );
  }
}
