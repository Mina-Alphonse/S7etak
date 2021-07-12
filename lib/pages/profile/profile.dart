import 'package:flutter/material.dart';
import 'package:gp/GlobalComponents/custom_horizontal_row.dart';
import 'package:gp/GlobalComponents/custom_text.dart';
import 'package:gp/GlobalComponents/custom_text_field.dart';
import 'package:gp/auth.dart';
import 'package:gp/stakeholdersClases/labResults.dart';

import '../../Size_Config.dart';
import '../../stakeholdersClases/Doctors.dart';
import '../../stakeholdersClases/Labs.dart';
import '../../stakeholdersClases/Patients.dart';
import 'components/MedicalLabsResults.dart';
import 'components/PersonalInformationCardDetails.dart';
import 'components/PrevuiosMedicalDiagnoses.dart';
import 'components/appointmentsWithDoctors.dart';
import 'components/appointmentsWithMedicalLabs.dart';
import 'components/chronicDiseases.dart';

class Profile extends StatelessWidget {
  final Patients patient;
  final List<Lab> labs;
  final List<Doctors> doctors;
  final List<LabResults> labResults;

  Profile({this.patient, this.labs, this.doctors, this.labResults});

  @override
  Widget build(BuildContext context) {
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
                  text: 'Appointments with labs and Radiology',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AppointmentsLabsFinal(
                                  labs: labs,
                                )));
                    // Navigator.pushNamed(context, '/AppointmentsDoctors');
                  },
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.3,
                ),

                CustomTextField(
                  text: 'Appointments with medical doctors',
                  onTap: () {
                    // AppointmentsMedicalDoctors();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AppointmentsMedicalDoctors(
                                  doctors: doctors,
                                )));
                    // Navigator.pushNamed(context, '/AppointmentsMedicalLabs');
                  },
                ),
                // CustomTextField(
                //   text: 'Appointments with radiology labs',
                //   onTap: () {
                //     Navigator.pushNamed(context, '/AppointmentsRadiologyLabs');
                //   },
                // ),
                //
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
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChronicDiseases(
                                  patients: patient,
                                )));
                  },
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.3,
                ),
                CustomTextField(
                  text: 'Previous medical operations',
                  onTap: () {
                    Navigator.pushNamed(context, '/PreviousMedicalOperations');
                  },
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.3,
                ),
                CustomTextField(
                  text: 'Previous medical diagnoses',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PreviousMedicalDiagnoses(
                                  patient: patient,
                                )));
                    // Navigator.pushNamed(context, '/PrevuiosMedicalDiagnoses');
                  },
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.3,
                ),
                CustomTextField(
                  text: 'Medical labs and Radiology  results',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MedicalLabsResults(
                                  labResults: labResults,
                                )));
                    // Navigator.pushNamed(context, '/MedicalLabsResults');
                  },
                ),
                // Divider(
                //   color: Colors.black,
                //   thickness: 0.3,
                // ),
                // CustomTextField(
                //   text: 'Radiology labs results',
                //   onTap: () {
                //     Navigator.pushNamed(context, '/RadiologyLabsResults');
                //   },
                // ),

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
                  text: 'My medicines',
                  onTap: () {
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
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PersonalInformationCardDetails(
                                  patient: patient,
                                )));
                  },
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.3,
                ),
                CustomTextField(
                  text: 'Log Out',
                  onTap: () async {
                    await AuthService().signOut();
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/SignIn', (route) => false);
                  },
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
// Widget _renderWidget(String title){
//   return Column(children: [
//     Padding(
//       padding:EdgeInsets.only(bottom: 40),
//       child: CustomTextField(
//         text: title,
//       ),
//     ),
//   ],);
// }
}
