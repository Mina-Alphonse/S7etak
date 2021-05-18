
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp/Size_Config.dart';
import 'package:gp/constraints.dart';

class OptionsInHome extends StatelessWidget {
  const OptionsInHome({
    Key key, this.text,
  }) : super(key: key);
final String text ;



  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth*0.35,
      height: SizeConfig.screenWidth*0.2,

      child: Card(


        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                text,
                style: TextStyle(
                    fontFamily: mainFont,
                    color: kPrimaryColor,
                    fontSize: getProptionateScreenWidth(13),
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        color: kliteColor,
        //margin: EdgeInsets.fromLTRB(5, 10, 5, 5),

      ),

    );
  }
}

