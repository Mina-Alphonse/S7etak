
import 'package:flutter/material.dart';

import '../Size_Config.dart';
import '../constraints.dart';

class BookButton extends StatelessWidget {
  final String text;
  const BookButton({
    Key key, this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.only(right: getProptionateScreenWidth(5)),
      padding: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(10)),
      height:getProptionateScreenHeight(50) ,
      //width: getProptionateScreenWidth(115),
      decoration: new BoxDecoration(
        color: kPrimaryColor,
        borderRadius:BorderRadius.circular(10),
        border: Border.all(width: 1.0, color:kliteColor),

      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color:kliteColor,
              fontSize: getProptionateScreenWidth(14),
              fontWeight: FontWeight.bold,
              fontFamily: mainFont
          ),
        ),
      ),
    );
  }
}