import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:gp/GlobalComponents/custom_text.dart';
import 'package:gp/Size_Config.dart';
import 'package:gp/constraints.dart';
import 'package:gp/pages/SignIn/SignIn.dart';
import 'package:gp/pages/SignUp/SignUp.dart';

class SliderPage extends StatelessWidget {
  Widget slidePage(var img, var text) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/$img',
          fit: BoxFit.fill,
          color: kPrimaryColor.withOpacity(0.6),
          colorBlendMode: BlendMode.darken,

        ),
        Positioned(
          bottom: getProptionateScreenWidth(200),
          left: getProptionateScreenWidth(75),
          right: getProptionateScreenWidth(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: getProptionateScreenWidth(22),
                  fontFamily: "Merriweather",
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: getProptionateScreenHeight(25),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Carousel(
              autoplayDuration: Duration(seconds: 5),
              showIndicator: false,
              boxFit: BoxFit.fitWidth,
              images: [
                slidePage('1.jpg', 'Find your personal medical information'),
                slidePage('2.jpg', 'Find your lab results easily'),
                slidePage('3.jpg', 'Find your nearest medical insurance company'),
              ],
            ),
            Positioned(
              bottom: getProptionateScreenWidth(120),
              left: getProptionateScreenWidth(40),
              right:  getProptionateScreenWidth(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: getProptionateScreenHeight(70),
                    child: TextButton(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: getProptionateScreenWidth(20),
                          fontFamily: "Merriweather",
                        ),
                      ),
                      onPressed: () async {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => SignIn()));
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(kSecondaryliteColor),
                      ),
                    ),
                  ),
                  SizedBox(height: getProptionateScreenHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: 'New to s7etk?',
                        color: Colors.white,
                        fontSize: getProptionateScreenWidth(20),
                        fontFamily: "Merriweather",
                      ),
                      SizedBox(width: getProptionateScreenWidth(10)),
                      GestureDetector(onTap: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => SignUp()));
                      },
                        child: CustomText(
                          text: 'Sign Up',
                          color: Colors.blue,
                          fontSize: getProptionateScreenWidth(18),
                          fontFamily: "Merriweather",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
