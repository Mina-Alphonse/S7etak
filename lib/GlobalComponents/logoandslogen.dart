import 'package:flutter/material.dart';

import '../Size_Config.dart';
import '../constraints.dart';

class LogoandSlogenWidget extends StatelessWidget {
  const LogoandSlogenWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: getProptionateScreenHeight(14.0),
        ),
        Image(
          image:AssetImage('assets/logo.png'),
          height:getProptionateScreenWidth(122.0),
          width: getProptionateScreenWidth(122.0),
        ),
        SizedBox(
          height: getProptionateScreenHeight(20.0),
        ),
        Image(
          image:AssetImage('assets/slogen.png'),
          height:getProptionateScreenWidth(80),
          width: getProptionateScreenWidth(152.0),
          color: kPrimaryColor,
        ),

      ],
    );
  }
}