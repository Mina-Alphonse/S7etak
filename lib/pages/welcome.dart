import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gp/Database.dart';
import 'package:gp/Size_Config.dart';
import 'package:gp/constraints.dart';
import 'package:gp/pages/sliderPage/slider_page.dart';
import 'SignIn/SignIn.dart';



class Welcome extends StatefulWidget {



  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
            () =>
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder:(BuildContext context) => SliderPage()
                )
            )

    );

    SizeConfig().init(context);
    return Scaffold(

      backgroundColor:kPrimaryColor,
      body: SingleChildScrollView(
        child: Center(
            child: welcomeLogoAndSlogen()
        ),
      ),
    );
  }

  Column welcomeLogoAndSlogen() {
    return Column(
            children: [
              SizedBox(
                height: getProptionateScreenHeight(130.0),
              ),
              Image(
                image:AssetImage('assets/logo.png'),
                height:getProptionateScreenWidth(256.0),
                width: getProptionateScreenWidth(256.0),
              ),
              SizedBox(
                height: getProptionateScreenHeight(66.0),
              ),

              Image(
                image:AssetImage('assets/slogen.png'),
                height:getProptionateScreenWidth(107),
                width: getProptionateScreenWidth(197.0),
              ),
            ],
          );
  }
}

