import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../Components/category_items.dart';
import 'Colors_page.dart';
import 'FamilyMemberpages.dart';
import 'Numbers_Page.dart';
import 'Phrases_Page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffef6db),
      appBar: AppBar(
        backgroundColor: Color(0xff46322b),
        title: Text(
          'Toku',
        ),
      ),
      body: Column(
        children: [
          Cartegory(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return NumbersPage();
                  },
                ),
              );
            },
            text: 'Numbers',
            color: Color(0xffEF9235),
          ),
          Cartegory(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FamilyMambersPage();
                  },
                ),
              );
            },
            text: 'Family Members',
            color: Color(0xff558B37),
          ),
          Cartegory(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ColorsPage();
                  },
                ),
              );
            }),
            text: 'Colors',
            color: Color(0xff79359F),
          ),
          Cartegory(
            onTap: (() {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PhrasesPage();
              }));
            }),
            text: 'Pharses',
            color: Color(0xff50ADC7),
          ),
        ],
      ),
    );
  }
}
