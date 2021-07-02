import 'package:flutter/material.dart';
import 'package:gp/DataRetrieval/patientsData.dart';
import 'package:gp/database.dart';
import 'package:gp/pages/SignIn/Components/LoginForm.dart';
import 'package:gp/stakeholdersClases/Patients.dart';
import 'package:provider/provider.dart';

import '../constraints.dart';

class PatientModel extends StatefulWidget {
  const PatientModel({Key key}) : super(key: key);

  @override
  _PatientModelState createState() => _PatientModelState();
}

class _PatientModelState extends State<PatientModel> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<Patients>.value(
      value: DatabaseService(uid: result.uid).patientData,

      child: Scaffold(
          appBar: AppBar(
            leading:  GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: kliteColor,

              ),
            ),
            backgroundColor: kPrimaryColor,
            centerTitle: true,
            title: Text(
              'Patient Data',
              style: TextStyle(
                color: kliteColor,
                fontWeight: FontWeight.bold,
                fontFamily: mainFont,

              ),
            ),
          ),
          body: PatientsData()),
    );
  }
}
