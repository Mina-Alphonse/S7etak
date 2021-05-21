import 'package:flutter/material.dart';
import 'package:gp/constraints.dart';

import '../Size_Config.dart';
import 'custom_text.dart';

class CustomHorizontalRow extends StatelessWidget {
  @required
  final String text;
  CustomHorizontalRow({this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Divider(
              thickness: 0.5,
              color: Colors.black,
            )),
        Expanded(
            flex: 3,
            child: CustomText(
              text: text,
              color: kSecondaryColor,
              alignment: Alignment.center,
              fontSize: getProptionateScreenHeight(22),
            )),
        Expanded(
            flex: 2,
            child: Divider(
              thickness: 0.5,
              color: Colors.black,
            )),
      ],
    );
  }
}
