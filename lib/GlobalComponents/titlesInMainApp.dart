import 'package:flutter/material.dart';

import '../Size_Config.dart';
import '../constraints.dart';

class TitlesInMainApp extends StatelessWidget {
  const TitlesInMainApp({
    Key key,this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth*0.1),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: getProptionateScreenWidth(25),
                fontFamily: 'Merriweather',
                fontWeight: FontWeight.bold,
                color: kliteColor
            ),

          ),


        ],
      ),
    );
  }
}
