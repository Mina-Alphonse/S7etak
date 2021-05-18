
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp/Size_Config.dart';
import 'package:gp/constraints.dart';

class Servicesbanner extends StatelessWidget {
  const Servicesbanner({
    Key key,
  }) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth*0.55,
      height: SizeConfig.screenWidth*0.6,

      child: Card(

        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          children: [
            Container(
              width: SizeConfig.screenWidth*0.55,
              height: getProptionateScreenHeight(200),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: kliteColor
              ),
              child: Image.asset(
                'assets/images.png',
                fit: BoxFit.cover,

              ),
            ),
            Column(
              children: [

                Center(
                  child: Text(
                    "Search",
                    style: TextStyle(
                        fontFamily: mainFont,
                        color: kPrimaryColor,
                        fontSize: getProptionateScreenWidth(25),
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                Center(
                  child: Text(
                    "for Services",
                    style: TextStyle(
                      fontFamily: mainFont,
                      color: kPrimaryColor,
                      fontSize: getProptionateScreenWidth(15),
                      fontWeight: FontWeight.w700,

                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: EdgeInsets.fromLTRB(5, 10, 5, 5),

      ),

    );
  }
}

