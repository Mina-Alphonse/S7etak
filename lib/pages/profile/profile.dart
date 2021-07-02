import 'package:flutter/material.dart';
import 'package:gp/DataComponents/patientModel.dart';
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
                SizedBox(
                  height: getProptionateScreenHeight(10),
                ),
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
                  height: getProptionateScreenHeight(10),
                ),
                CustomTextField(
                  text: 'Appointments with doctors',
                  onTap: (){
                    Navigator.pushNamed(context, '/AppointmentsDoctors');
                  },
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.3,
                ),

                CustomTextField(
                  text: 'Appointments with medical labs',
                  onTap: (){
                    Navigator.pushNamed(context, '/AppointmentsMedicalLabs');
                  },
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.3,
                ),

                CustomTextField(
                  text: 'Appointments with radiology labs',
                  onTap: (){
                    Navigator.pushNamed(context, '/AppointmentsRadiologyLabs');
                  },
                ),

                // History Section
                SizedBox(
                  height: getProptionateScreenHeight(30),
                ),
                CustomHorizontalRow(
                  text: 'History',
                ),

                SizedBox(
                  height: getProptionateScreenHeight(10),
                ),
                CustomTextField(
                  text: 'Chronic diseases',
                  onTap: (){
                    Navigator.pushNamed(context, '/chronicDiseases');
                  },
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.3,
                ),
                CustomTextField(
                  text: 'Previous medical operations',
                  onTap: (){
                    Navigator.pushNamed(context, '/PreviousMedicalOperations');
                  },
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.3,
                ),
                CustomTextField(
                  text: 'Previous medical diagnoses',
                  onTap: (){
                    Navigator.pushNamed(context, '/PrevuiosMedicalDiagnoses');
                  },

                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.3,
                ),
                CustomTextField(
                  text: 'Medical labs results',
                  onTap: (){
                    Navigator.pushNamed(context, '/MedicalLabsResults');
                  },
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.3,
                ),
                CustomTextField(
                  text: 'Radiology labs results',
                  onTap: (){
                    Navigator.pushNamed(context, '/RadiologyLabsResults');
                  },
                ),

                // Medicines Section
                SizedBox(
                  height: getProptionateScreenHeight(30),
                ),
                CustomHorizontalRow(
                  text: 'Medicines',
                ),

                SizedBox(
                  height: getProptionateScreenHeight(10),
                ),
                CustomTextField(
                  text: 'New medicines',
                  onTap: (){
                    Navigator.pushNamed(context, '/MedicineList');
                  },


                ),


                // Personal Info Section
                SizedBox(
                  height: getProptionateScreenHeight(30),
                ),
                CustomHorizontalRow(
                  text: 'Personal Info',
                ),

                SizedBox(
                  height: getProptionateScreenHeight(10),
                ),
                CustomTextField(
                    text: 'Personal information',
                    onTap:(){
                      Navigator.pushNamed(context, '/PatientModel');
                    },
                  ),
                Divider(
                  color: Colors.black,
                  thickness: 0.3,
                ),
                CustomTextField(
                  text: 'Log Out',
                  onTap: () async
                  {
                    await AuthService().signOut();
                    Navigator.pushNamedAndRemoveUntil(context, '/SignIn', (route) => false);
                  },
                ),
                SizedBox(height: 30,)
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
