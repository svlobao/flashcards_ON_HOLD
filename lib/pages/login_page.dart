import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'KanAdventures',
              style: TextStyle(color: Colors.grey[900], fontSize: 45),
            ),
            TextField(),
            TextField(),
            ElevatedButton(
                onPressed: () {},
                child: Text('Login', textAlign: TextAlign.center)),
            TextButton(
                onPressed: () {},
                child: Text('Click here to create an account.',
                    textAlign: TextAlign.center))
          ],
        ),
      ),
    );
  }
}
