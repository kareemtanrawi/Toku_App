import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cartegory extends StatelessWidget {
  Cartegory({this.text, this.color, this.onTap});
  String? text;
  Color? color;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(
          left: 20,
        ),
        alignment: Alignment.centerLeft,
        height: 65,
        width: double.infinity,
        color: color,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
