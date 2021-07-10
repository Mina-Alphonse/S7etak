import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Size_Config.dart';
import '../../../constraints.dart';

class PreviousHistoryCard extends StatelessWidget {
  const PreviousHistoryCard({
    Key key,
    this.name,
  }) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
      decoration: BoxDecoration(
        color: kliteColor,
        border: Border.all(color: kPrimaryColor, width: 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  name,
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 15,
                    fontFamily: mainFont,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: getProptionateScreenHeight(20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
