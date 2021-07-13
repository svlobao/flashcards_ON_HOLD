import 'package:flashcards/pages/kanas.dart';
import 'package:flutter/material.dart';

import 'pages/homepage.dart';

void main() => runApp(const Kanadventures());

class Kanadventures extends StatelessWidget {
  const Kanadventures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/homepage', routes: {
      '/homepage': (context) => const Homepage(),
      '/kanas': (context) => const Kanas(),
    });
  }
}
