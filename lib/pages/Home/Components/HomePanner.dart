






import 'package:flutter/material.dart';
import 'package:gp/constraints.dart';

import '../../../Size_Config.dart';

class HomePanner extends StatelessWidget {
  const HomePanner({
    Key key, this.tap,
  }) : super(key: key);
  final Function tap;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: tap,


      child: Stack(

        children: [



             Container(

               margin: EdgeInsets.symmetric(horizontal: 5),
               child: Image.asset(
                  'assets/HealthStaus.jpg',
                  fit: BoxFit.fill,
                  width: SizeConfig.screenWidth*0.88,
                  height: getProptionateScreenHeight(102.0),

                ),
             ),

           Container(

            padding: EdgeInsets.symmetric(
              horizontal: getProptionateScreenWidth(20),
              vertical: getProptionateScreenWidth(15),
            ),
            width: SizeConfig.screenWidth*0.9,
            height: getProptionateScreenHeight(102.0),

            decoration: BoxDecoration(
              color:kliteColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(5),
             ),
            child: Text(
              'Health Status',
              style: TextStyle(
                fontFamily: mainFont,
                color: kPrimaryColor,
                fontSize: getProptionateScreenWidth(28),
                fontWeight: FontWeight.w400
              ),
            ),
          ),
        ],
      ),
    );
  }
}
