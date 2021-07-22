import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  // not sure if these should or be final (and const) or not.
  final String frontLabel;
  final String backLabel;

  final int currentIndex;

  final List<int> savedCards;

  const CustomCard(
      {Key? key,
      required this.frontLabel,
      required this.backLabel,
      required this.currentIndex,
      required this.savedCards})
      : super(key: key);

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool iconColorState = false;

  void playSound() {
    print('Unimplemented Warning');
  }

  void saveCard({required int index}) {
    widget.savedCards.add(index);
  }

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      speed: 250,
      front: Card(
        elevation: 4.0,
        child: Center(
          child: Text(
            widget.frontLabel,
            style: const TextStyle(fontSize: 80.0),
          ),
        ),
      ),
      back: Card(
        elevation: 4.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 80.0),
              child: Text(
                widget.backLabel,
                style:
                    const TextStyle(fontSize: 60.0, color: Colors.greenAccent),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 1.0),
                    child: IconButton(
                        onPressed: () {
                          playSound();
                        },
                        icon: const Icon(Icons.volume_up)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 1.0),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          saveCard(index: widget.currentIndex);
                          iconColorState = !iconColorState;
                        });
                      },
                      icon: Icon(
                        Icons.check,
                        color:
                            iconColorState ? Colors.greenAccent : Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
