import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp/Size_Config.dart';
import 'package:gp/constraints.dart';

import '../../../constraints.dart';

class HomeContainers extends StatelessWidget {
  const HomeContainers({
    Key key,
    this.text1,
    this.text2,
    this.imgURL,
    this.color,
    this.txtColor,
  }) : super(key: key);
  final String text1, text2, imgURL;
  final Color color, txtColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.95,
      height: SizeConfig.screenWidth * 0.5,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          children: [
            Container(
              width: SizeConfig.screenWidth * 0.95,
              child: Image(
                fit: BoxFit.fitWidth,
                image: AssetImage(
                  imgURL,
                ),
                alignment: Alignment.center,
              ),
              foregroundDecoration:BoxDecoration(
                //color: kPrimaryColor.withOpacity(0.3),
                gradient: LinearGradient(
                  colors: [
                    color.withOpacity(0),
                    color.withOpacity(0.7),
                    color.withOpacity(1)
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
            ),
            Positioned(
              right: getProptionateScreenWidth(20),
              bottom: getProptionateScreenHeight(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    text1,
                    style: TextStyle(
                        fontFamily: mainFont,
                        color: txtColor,
                        fontSize: getProptionateScreenWidth(35),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    text2,
                    style: TextStyle(
                      fontFamily: mainFont,
                      color: txtColor,
                      fontSize: getProptionateScreenWidth(25),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 5,
        margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
      ),
    );
  }
}
