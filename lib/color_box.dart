import 'package:flutter/material.dart';
import 'logic.dart';

class ColorBox extends StatelessWidget {
  final Color color;

  ColorBox({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 200.0,
          width: 200.0,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),

        Text(
            RGBtoHEX(color)
        ),

        Text(
            RGBformat(color)
        )
      ],
    );
  }
}