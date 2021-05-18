import 'package:flutter/material.dart';

import '../Size_Config.dart';
import '../constraints.dart';

class CopyRightWidget extends StatelessWidget {
  const CopyRightWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(20)) ,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text:'Medical insurance uses cookies for analytics,'
                        ' personalizedcontent and ads. By using Personal '
                        "Trainer's Services, youagree to this use of cookies .",
                    style: TextStyle(
                      color: kPrimaryColor,


                    ),
                  ),
                  TextSpan(
                    text:"Learn More",
                    style: TextStyle(
                      color: kSecondaryColor,


                    ),
                  ),


                ],
              ),
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: getProptionateScreenHeight(15.0),

              ),
              textAlign: TextAlign.center,

            )
        ),
        SizedBox(height: getProptionateScreenHeight(45.0),),

      ],
    );
  }
}