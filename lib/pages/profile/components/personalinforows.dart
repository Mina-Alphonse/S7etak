import 'package:flutter/material.dart';
import 'package:gp/GlobalComponents/custom_text.dart';
import 'package:gp/constraints.dart';

import '../../../Size_Config.dart';



class personalinforows extends StatelessWidget {
  @required
  final String text,text2;
  personalinforows({this.text, this.text2});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:12.0),
      child: Column(
        children: [

          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              //width: SizeConfig.screenWidth*0.6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: text2+' : ',
                    color: kSecondaryColor.withOpacity(0.7),
                    alignment: Alignment.center,
                    fontSize: getProptionateScreenHeight(22),
                  ),
                  CustomText(
                    text: text,
                    color: kPrimaryColor.withOpacity(0.7),
                    alignment: Alignment.center,
                    fontSize: getProptionateScreenHeight(22),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
