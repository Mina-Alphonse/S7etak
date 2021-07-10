import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Size_Config.dart';
import '../../../constraints.dart';

enum Gender { Male, Female }

class GenderFormWidget extends StatefulWidget {

  final Function setGender;
  const GenderFormWidget({
    Key key,this.setGender
  }) : super(key: key);


  @override
  _GenderFormWidgetState createState() => _GenderFormWidgetState();
}

class _GenderFormWidgetState extends State<GenderFormWidget> {
  Gender gender = Gender.Male;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(40)),
      //height: getProptionateScreenHeight(50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Gender',
            style: TextStyle(
              color: kSecondaryColor,
              fontSize: getProptionateScreenWidth(15),
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: ListTile(
                  title: const Text(
                    'Female',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 13,
                    ),
                  ),
                  leading: Radio<Gender>(
                    value: Gender.Female,
                    groupValue: gender,
                    onChanged: (Gender value) {
                      setState(() {
                        widget.setGender("Female");
                        gender = value;
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: const Text(
                    'Male',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 13,
                    ),
                  ),
                  leading: Radio<Gender>(
                    value: Gender.Male,
                    groupValue: gender,
                    onChanged: (Gender value) {
                      setState(() {
                        widget.setGender("Male");
                        gender = value;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
