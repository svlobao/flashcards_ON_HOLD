import 'package:flutter/material.dart';

class Kanas extends StatefulWidget {
  const Kanas({Key? key}) : super(key: key);

  @override
  _KanasState createState() => _KanasState();
}

class _KanasState extends State<Kanas> {
  @override
  Widget build(BuildContext context) {
    int cardIndex = 1;

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
        body: SafeArea(
          child: TabBarView(
            children: [
              GridView.count(
                crossAxisCount: 5,
                mainAxisSpacing: 5.0,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        cardIndex = 0;
                        Navigator.pushNamed(context, '/hiragana',
                            arguments: {'index': cardIndex});
                      });
                    },
                    child: const Card(
                      elevation: 5.0,
                      child: Center(
                        child: Text(
                          'あ',
                          style: TextStyle(fontSize: 35.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        cardIndex = 1;
                        Navigator.pushNamed(context, '/hiragana',
                            arguments: {'index': cardIndex});
                      });
                    },
                    child: const Card(
                      elevation: 5.0,
                      child: Center(
                        child: Text(
                          'い',
                          style: TextStyle(fontSize: 35.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        cardIndex = 2;
                        Navigator.pushNamed(context, '/hiragana',
                            arguments: {'index': cardIndex});
                      });
                    },
                    child: const Card(
                      elevation: 5.0,
                      child: Center(
                        child: Text(
                          'う',
                          style: TextStyle(fontSize: 35.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        cardIndex = 3;
                        Navigator.pushNamed(context, '/hiragana',
                            arguments: {'index': cardIndex});
                      });
                    },
                    child: const Card(
                      elevation: 5.0,
                      child: Center(
                        child: Text(
                          'え',
                          style: TextStyle(fontSize: 35.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, '/hiragana');
                      });
                    },
                    child: const Card(
                      elevation: 5.0,
                      child: Center(
                        child: Text(
                          'お',
                          style: TextStyle(fontSize: 35.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, '/hiragana');
                      });
                    },
                    child: const Card(
                      elevation: 5.0,
                      child: Center(
                        child: Text(
                          'か',
                          style: TextStyle(fontSize: 35.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, '/hiragana');
                      });
                    },
                    child: const Card(
                      elevation: 5.0,
                      child: Center(
                        child: Text(
                          'き',
                          style: TextStyle(fontSize: 35.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, '/hiragana');
                      });
                    },
                    child: const Card(
                      elevation: 5.0,
                      child: Center(
                        child: Text(
                          'く',
                          style: TextStyle(fontSize: 35.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, '/hiragana');
                      });
                    },
                    child: const Card(
                      elevation: 5.0,
                      child: Center(
                        child: Text(
                          'け',
                          style: TextStyle(fontSize: 35.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, '/hiragana');
                      });
                    },
                    child: const Card(
                      elevation: 5.0,
                      child: Center(
                        child: Text(
                          'こ',
                          style: TextStyle(fontSize: 35.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              GridView.count(
                crossAxisCount: 5,
                mainAxisSpacing: 5.0,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        cardIndex = 0;
                        Navigator.pushNamed(context, '/katakana',
                            arguments: {'index': cardIndex});
                      });
                    },
                    child: const Card(
                      elevation: 5.0,
                      child: Center(
                        child: Text(
                          'ア',
                          style: TextStyle(fontSize: 35.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        cardIndex = 1;
                        Navigator.pushNamed(context, '/katakana',
                            arguments: {'index': cardIndex});
                      });
                    },
                    child: const Card(
                      elevation: 5.0,
                      child: Center(
                        child: Text(
                          'イ',
                          style: TextStyle(fontSize: 35.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, '/hiragana');
                      });
                    },
                    child: const Card(
                      elevation: 5.0,
                      child: Center(
                        child: Text(
                          'ウ',
                          style: TextStyle(fontSize: 35.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, '/hiragana');
                      });
                    },
                    child: const Card(
                      elevation: 5.0,
                      child: Center(
                        child: Text(
                          'エ',
                          style: TextStyle(fontSize: 35.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, '/hiragana');
                      });
                    },
                    child: const Card(
                      elevation: 5.0,
                      child: Center(
                        child: Text(
                          'オ',
                          style: TextStyle(fontSize: 35.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, '/flashchiraganaards');
                      });
                    },
                    child: const Card(
                      elevation: 5.0,
                      child: Center(
                        child: Text(
                          'カ',
                          style: TextStyle(fontSize: 35.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, '/hiragana');
                      });
                    },
                    child: const Card(
                      elevation: 5.0,
                      child: Center(
                        child: Text(
                          'キ',
                          style: TextStyle(fontSize: 35.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, '/katakana');
                      });
                    },
                    child: const Card(
                      elevation: 5.0,
                      child: Center(
                        child: Text(
                          'ク',
                          style: TextStyle(fontSize: 35.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, '/katakana');
                      });
                    },
                    child: const Card(
                      elevation: 5.0,
                      child: Center(
                        child: Text(
                          'ケ',
                          style: TextStyle(fontSize: 35.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, '/katakana');
                      });
                    },
                    child: const Card(
                      elevation: 5.0,
                      child: Center(
                        child: Text(
                          'コ',
                          style: TextStyle(fontSize: 35.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget _kanaCard({}){}