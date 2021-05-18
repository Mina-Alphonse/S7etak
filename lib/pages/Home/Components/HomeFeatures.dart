
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp/Size_Config.dart';
import 'package:gp/constraints.dart';

class HomeFeatures extends StatelessWidget {
  const HomeFeatures({
    Key key, this.image, this.textMAin, this.textMin ,
  }) : super(key: key);
  final String image,textMAin,textMin;



  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth*0.35,
      //height: SizeConfig.screenWidth*0.45,

      child: Card(

        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          children: [
            Container(

              height: getProptionateScreenHeight(180),
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: kliteColor
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,

              ),
            ),
            Column(
              children: [

                Center(
                  child: Text(
                    textMAin,
                    style: TextStyle(
                        fontFamily: mainFont,
                        color: kPrimaryColor,
                        fontSize: getProptionateScreenWidth(20),
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                Center(
                  child: Text(
                    textMin,
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

