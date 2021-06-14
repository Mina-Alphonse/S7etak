import 'package:flutter/material.dart';

import 'package:gp/pages/Explore/Explore.dart';
import 'package:gp/pages/Explore/components/CardDetails.dart';
import 'package:gp/pages/Home/Home.dart';



import 'package:gp/pages/SignIn/SignIn.dart';
import 'package:gp/pages/SignUp/SignUp.dart';
import 'package:gp/pages/profile/components/appointmentsWithMedicalLabs.dart';
import 'package:gp/pages/profile/components/appointmentsWithRadiologyLabs.dart';
import 'package:gp/pages/profile/components/chronicDiseases.dart';
import 'package:gp/pages/profile/profile.dart';

import 'package:gp/pages/welcome.dart';

import 'pages/profile/components/PrevuiosMedicalDiagnoses.dart';
import 'pages/profile/components/appointmentsWithDoctors.dart';
import 'pages/profile/components/previousMedicalOperations.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes:{

      '/':(context)=>Welcome(), //Welcome screen
      '/SignIn':(context)=>SignIn(),
      '/SignUp':(context)=>SignUp(),

      '/Home':(context)=>Home(),
      '/Explore':(context)=>Explore(),
      '/Profile':(context)=>Profile(),
      '/AppointmentsDoctors':(context)=>AppointmentsDoctors(),
      '/AppointmentsRadiologyLabs':(context)=>AppointmentsRadiologyLabs(),
      '/AppointmentsMedicalLabs':(context)=>AppointmentsMedicalLabs(),
      '/chronicDiseases':(context)=>chronicDiseases(),
      '/PrevuiosMedicalDiagnoses':(context)=>PrevuiosMedicalDiagnoses(),
      '/PreviousMedicalOperations':(context)=>PreviousMedicalOperations(),
      '/cardDetails':(context)=>cardDetails(),

    },
  ));
}
