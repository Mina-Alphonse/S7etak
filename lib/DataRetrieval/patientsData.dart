import 'package:flutter/material.dart';
import 'package:gp/pages/LoadingPage.dart';
import 'package:gp/stakeholdersClases/Patients.dart';
import 'package:provider/provider.dart';

class PatientsData extends StatefulWidget {
  const PatientsData({Key key}) : super(key: key);

  @override
  _PatientsDataState createState() => _PatientsDataState();
}

class _PatientsDataState extends State<PatientsData> {
  @override
  Widget build(BuildContext context) {

    Patients patient = Provider.of<Patients>(context);
    if(patient != null){
      print(patient.name);
    }

    return LoadingPage();
  }
}
