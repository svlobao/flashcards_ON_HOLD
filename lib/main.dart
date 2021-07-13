import 'package:flutter/material.dart';

import 'pages/homepage.dart';

void main() => runApp(const Kanadventures());

class Kanadventures extends StatelessWidget {
  const Kanadventures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/home',
        routes: {'/home': (context) => const Homepage()});
  }
}
