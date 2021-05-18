
import 'package:flutter/material.dart';
import 'package:gp/GlobalComponents/copyRight.dart';
import 'package:gp/GlobalComponents/logoandslogen.dart';

import '../../../Size_Config.dart';
import '../../../constraints.dart';
import 'LoginForm.dart';

class signInBody extends StatelessWidget {
  const signInBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LogoandSlogenWidget(),

        SizedBox(height: getProptionateScreenHeight(30.0),),
        loginBody(),

        CopyRightWidget(),


      ],
    );
  }
  Column socialMEdiaLogin() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: getProptionateScreenWidth(10)),
          width: getProptionateScreenWidth(302),
          height: getProptionateScreenHeight(48),
          child: ElevatedButton(
            onPressed: () {
              // Respond to button press
            },
            style: TextButton.styleFrom(

              backgroundColor: kPrimaryColor,
              //minimumSize: Size(40,30),


            ),
            child: Row(
              children: [
                SizedBox(width: getProptionateScreenWidth(20),),
                Image(
                  image: AssetImage('assets/gooogle.png'),
                  height: getProptionateScreenHeight(37.0),
                  width: getProptionateScreenHeight(37.0),

                ),
                SizedBox(width: getProptionateScreenWidth(40.0),),
                Text(
                  'Sign In with Google',
                  style: TextStyle(
                    fontSize: getProptionateScreenWidth(18.0),
                    color: Colors.white,
                  ),
                ),
              ],
            ),


          ),
        ),
        SizedBox(height: getProptionateScreenHeight(10.0),),
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: getProptionateScreenWidth(10)),
          width: getProptionateScreenWidth(302),
          height: getProptionateScreenHeight(48),
          child: ElevatedButton(
            onPressed: () {
              // Respond to button press
            },
            style: TextButton.styleFrom(

              backgroundColor: kPrimaryColor,
              //minimumSize: Size(40,30),


            ),
            child: Row(
              children: [
                SizedBox(width: getProptionateScreenWidth(20),),
                Image(
                  image: AssetImage('assets/facebook.png'),
                  height: getProptionateScreenHeight(37.0),
                  width: getProptionateScreenHeight(25.0),

                ),
                SizedBox(width: getProptionateScreenWidth(40),),
                Text(
                  'Sign In with Facebook',
                  style: TextStyle(
                    fontSize: getProptionateScreenWidth(18.0),
                    color: Colors.white,
                  ),
                ),
              ],
            ),


          ),
        ),

        SizedBox(height: getProptionateScreenHeight(20.0),),
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: getProptionateScreenWidth(10)),
          child: Row(
            children: [
              SizedBox(width: getProptionateScreenWidth(32.0),),
              Container(
                width: getProptionateScreenWidth(128),
                height: 1.0,
                color: Colors.grey,

              ),
              SizedBox(width: getProptionateScreenWidth(10.0),),
              Text(
                'Or',
                style: TextStyle(
                  fontSize: getProptionateScreenWidth(15),
                ),
              ),
              SizedBox(width: getProptionateScreenWidth(10.0),),
              Container(
                width: getProptionateScreenWidth(128),
                height: 1.0,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        SizedBox(height: getProptionateScreenHeight(20.0),),
      ],
    );
  }
  Column loginBody() {
    return Column(
      children: [
        Text(
          'Log in and get your info.',
          style: TextStyle(
            fontSize: getProptionateScreenWidth(22.0),
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
        SizedBox(
          height: getProptionateScreenHeight(20.0),
        ),
        socialMEdiaLogin(),
        //email
        LoginFormWidget()
      ],
    );
  }
}
