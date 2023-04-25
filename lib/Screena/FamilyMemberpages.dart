import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Components/item.dart';
import '../models/Number.dart';

class FamilyMambersPage extends StatelessWidget {
  const FamilyMambersPage({super.key});
  final List<Item> FAmilyMembers = const [
    Item(
      sound: 'father.wav',
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Chichioya',
      enName: 'father',
    ),
    Item(
      sound: 'daughter.wav',
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'daughter',
    ),
    Item(
      sound: 'grand father.wav',
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Ojīsan',
      enName: 'Grand Father',
    ),
    Item(
      sound: 'mother.wav',
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Hahaoya',
      enName: 'mother',
    ),
    Item(
      sound: 'grand mother.wav',
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Sobo',
      enName: 'grand mother',
    ),
    Item(
      sound: 'older bother.wav',
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Nīsan',
      enName: 'older brother',
    ),
    Item(
      sound: 'older sister.wav',
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ane',
      enName: 'older sister',
    ),
    Item(
      sound: 'son.wav',
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'son',
    ),
    Item(
      sound: 'younger brohter.wav',
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'otōto',
      enName: 'younger brother',
    ),
    Item(
      sound: 'younger sister.wav',
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imōto',
      enName: 'younger sister',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322b),
        title: Text(
          'Family Members',
        ),
      ),
      body: ListView.builder(
        itemCount: FAmilyMembers.length,
        itemBuilder: ((context, index) {
          return ListItem(
            number: FAmilyMembers[index],
            color: Color(0xff558B37),
            typeItem: 'family_members',
          );
        }),
      ),
    );
  }
}
