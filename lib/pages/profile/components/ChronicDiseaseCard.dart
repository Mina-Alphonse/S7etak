import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Size_Config.dart';
import '../../../constraints.dart';

class ChronicDiseaseCard extends StatelessWidget {
  const ChronicDiseaseCard({
    Key key,
    this.name,
  }) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          height: getProptionateScreenHeight(60),
          decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Center(
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kliteColor,
                fontSize: 20,
                fontFamily: mainFont,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
  }
}
