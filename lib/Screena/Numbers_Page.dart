import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:toku/Components/item.dart';

import '../models/Number.dart';
import 'Numbers_Page.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Item> numbers = const [
    Item(
      sound: 'number_one_sound.mp3',
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one',
    ),
    Item(
      sound: 'number_two_sound.mp3',
      image: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
      enName: 'two',
    ),
    Item(
      sound: 'number_three_sound.mp3',
      image: 'assets/images/numbers/number_three.png',
      jpName: 'San',
      enName: 'three',
    ),
    Item(
      sound: 'number_four_sound.mp3',
      image: 'assets/images/numbers/number_four.png',
      jpName: 'Go',
      enName: 'four',
    ),
    Item(
      sound: 'number_five_sound.mp3',
      image: 'assets/images/numbers/number_five.png',
      jpName: 'ichi',
      enName: 'five',
    ),
    Item(
      sound: 'number_six_sound.mp3',
      image: 'assets/images/numbers/number_six.png',
      jpName: 'Roki',
      enName: 'six',
    ),
    Item(
      sound: 'number_seven_sound.mp3',
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'Sebun',
      enName: 'seven',
    ),
    Item(
      sound: 'number_eight_sound.mp3',
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'hachi',
      enName: 'eight',
    ),
    Item(
      sound: 'number_nine_sound.mp3',
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'Kyu',
      enName: 'nine',
    ),
    Item(
      sound: 'number_ten_sound.mp3',
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'Ju',
      enName: 'ten',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322b),
        title: Text(
          'Numbers',
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: ((context, index) {
          return ListItem(
            typeItem: 'numbers',
            number: numbers[index],
            color: Color(0xffef9235),
          );
        }),
      ),
    );
  }
}

//   List<Widget> getList(List<Number> numbers) {
//     List<Widget> itemList = [];

//     for (int i = 0; i < numbers.length; i++) {
//       itemList.add(
//         Item(
//           number: numbers[i],
//         ),
//       );
//     }
//     return itemList;
//   }
// }
