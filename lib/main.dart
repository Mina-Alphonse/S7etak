import 'package:flutter/material.dart';

import 'package:gp/pages/Explore/Explore.dart';
import 'package:gp/pages/Home/Home.dart';



import 'package:gp/pages/SignIn/SignIn.dart';
import 'package:gp/pages/SignUp/SignUp.dart';
import 'package:gp/pages/profile/components/appointmentsWithMedicalLabs.dart';
import 'package:gp/pages/profile/components/appointmentsWithRadiologyLabs.dart';
import 'package:gp/pages/profile/profile.dart';

import 'package:gp/pages/welcome.dart';

import 'pages/profile/components/appointmentsWithDoctors.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes:{

      '/':(context)=>Welcome(),
      '/SignIn':(context)=>SignIn(),
      '/SignUp':(context)=>SignUp(),

      '/Home':(context)=>Home(),
      '/Explore':(context)=>Explore(),
      '/Profile':(context)=>Profile(),
      '/AppointmentsDoctors':(context)=>AppointmentsDoctors(),
      '/AppointmentsRadiologyLabs':(context)=>AppointmentsRadiologyLabs(),
      '/AppointmentsMedicalLabs':(context)=>AppointmentsMedicalLabs(),
    },
  ));
}
