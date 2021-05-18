import 'package:flutter/material.dart';
import 'package:gp/Size_Config.dart';

import 'custom_text.dart';

class CustomTextField extends StatelessWidget {
  final Function onTap;

  final String text;
  CustomTextField({this.onTap,this.text});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: CustomText(
            text: text,
            alignment: Alignment.centerLeft,
            fontSize: getProptionateScreenHeight(20),
          ),
        ),
        SizedBox(height: getProptionateScreenWidth(10),),
        Divider(
          color: Colors.black,
          thickness: 0.5,
        ),
      ],
    );
  }
}
