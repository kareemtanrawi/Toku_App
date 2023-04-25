import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/Number.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {super.key,
      required this.number,
      required this.color,
      required this.typeItem});
  final Item number;
  final Color color;
  final String typeItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(
            color: Color(0xfffff6dc),
            child: Image.asset(
              number.image!,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  number.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 16,
            ),
            child: IconButton(
                onPressed: () {
                  AudioCache player =
                      AudioCache(prefix: 'assets/sounds/$typeItem/');
                  player.play(number.sound);
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 30,
                )),
          ),
        ],
      ),
    );
  }
}

class PhraseItem extends StatelessWidget {
  const PhraseItem(
      {Key? key,
      required this.color,
      required this.itemType,
      required this.phrase,
      required String typeItem,
      required number})
      : super(key: key);

  final Item phrase;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  phrase.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              try {
                AudioCache player =
                    AudioCache(prefix: 'assets/sounds/$itemType/');
                player.play(phrase.sound);
              } catch (ex) {
                print(ex);
              }
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 28,
            ),
          )
        ],
      ),
    );
  }
}
