import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;

  final double fontSize;

  final Color color;

  final String fontFamily;

  final Alignment alignment;
  final FontWeight fontWeight;

  final int maxLine;
  final double height;

  const CustomText({
    this.fontWeight,
    this.fontFamily = 'Merriweather',
    this.text = '',
    this.fontSize = 16,
    this.color = Colors.black,
    this.alignment = Alignment.topLeft,
    this.maxLine,
    this.height = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     // width: MediaQuery.of(context).size.width,
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: fontWeight,
          fontFamily: fontFamily,
          color: color,
          height: height,
          fontSize: fontSize,
        ),
        maxLines: maxLine,
      ),
    );
  }
}