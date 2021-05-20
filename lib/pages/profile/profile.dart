 import 'package:flutter/material.dart';
import 'package:gp/GlobalComponents/custom_horizontal_row.dart';
import 'package:gp/GlobalComponents/custom_text.dart';
import 'package:gp/GlobalComponents/custom_text_field.dart';
import 'package:gp/auth.dart';

import '../../Size_Config.dart';

class Profile extends StatelessWidget {


  // void function1(){}
  // void function2(){}
  // void function3(){}
  // void function4(){}
  // void function5(){}
  // void function6(){}
  // void function7(){}
  //
  @override
  Widget build(BuildContext context) {
    // List<Function> functionCallbacks = [
    //   function1,
    //   function2,
    // ];
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
              top: getProptionateScreenWidth(20),
              left: getProptionateScreenWidth(20),
              right: getProptionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomText(
                  // fontWeight: FontWeight.bold,
                  text: 'Profile',
                  fontFamily: 'Merriweather',
                  fontSize: getProptionateScreenHeight(30),
                  alignment: Alignment.topCenter,
                ),
                SizedBox(
                  height: getProptionateScreenHeight(30),
                ),

                // Appointment Section
                CustomHorizontalRow(
                  text: 'Appointments',
                ),
                SizedBox(
                  height: getProptionateScreenHeight(40),
                ),
                CustomTextField(
                  text: 'Appointments with doctors',
                ),
                SizedBox(
                  height: getProptionateScreenHeight(40),
                ),
                CustomTextField(
                  text: 'Appointments with medical labs',
                ),
                SizedBox(
                  height: getProptionateScreenHeight(40),
                ),
                CustomTextField(
                  text: 'Appointments with radiology labs',
                ),

                // History Section
                SizedBox(
                  height: getProptionateScreenHeight(50),
                ),
                CustomHorizontalRow(
                  text: 'History',
                ),

                SizedBox(
                  height: getProptionateScreenHeight(40),
                ),
                CustomTextField(
                  text: 'Chronic diseases',
                ),
                SizedBox(
                  height: getProptionateScreenHeight(40),
                ),
                CustomTextField(
                  text: 'Previous medical operations',
                ),
                SizedBox(
                  height: getProptionateScreenHeight(40),
                ),
                CustomTextField(
                  text: 'Previous medical diagnoses',
                ),
                SizedBox(
                  height: getProptionateScreenHeight(40),
                ),
                CustomTextField(
                  text: 'Medical labs results',
                ),
                SizedBox(
                  height: getProptionateScreenHeight(40),
                ),
                CustomTextField(
                  text: 'Radiology labs results',
                ),

                // Medicines Section
                SizedBox(
                  height: getProptionateScreenHeight(50),
                ),
                CustomHorizontalRow(
                  text: 'Medicines',
                ),

                SizedBox(
                  height: getProptionateScreenHeight(40),
                ),
                CustomTextField(
                  text: 'New medicines',
                ),
                SizedBox(
                  height: getProptionateScreenHeight(40),
                ),
                CustomTextField(
                  text: 'My medicines',
                ),

                // Personal Info Section
                SizedBox(
                  height: getProptionateScreenHeight(50),
                ),
                CustomHorizontalRow(
                  text: 'Personal Info',
                ),

                SizedBox(
                  height: getProptionateScreenHeight(40),
                ),
                CustomTextField(
                    text: 'Personal information',
                  ),
                SizedBox(
                  height: getProptionateScreenHeight(40),
                ),
                _renderWidget("Logout"),
                // ListTile(title: Text("Tagroba"), onTap: () {print("clicked");},),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget _renderWidget(String title){
    return Column(children: [
      Padding(
        padding:EdgeInsets.only(bottom: 40),
        child: CustomTextField(
          text: title,
        ),
      ),
    ],);
  }
}
