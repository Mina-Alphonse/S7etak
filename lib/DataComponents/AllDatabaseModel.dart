import 'package:flutter/cupertino.dart';
import 'package:gp/database.dart';
import 'package:gp/pages/Home/Home.dart';
import 'package:gp/stakeholdersClases/Hospitals.dart';
import 'package:gp/stakeholdersClases/InsuranceCompany.dart';
import 'package:gp/stakeholdersClases/Labs.dart';
import 'package:gp/stakeholdersClases/Patients.dart';
import 'package:gp/stakeholdersClases/Pharmacies.dart';
import 'package:gp/stakeholdersClases/labResults.dart';
import 'package:provider/provider.dart';

import '../stakeholdersClases/Doctors.dart';

class AllDBModel extends StatefulWidget {
  final String uid;

  const AllDBModel({Key key, this.uid}) : super(key: key);

  @override
  _AllDBModelState createState() => _AllDBModelState();
}

class _AllDBModelState extends State<AllDBModel> {
  @override
  Widget build(BuildContext context) {
    DatabaseService db = DatabaseService(uid: widget.uid);
    return StreamProvider<Patients>.value(
      value: db.patientData,
      child: StreamProvider<List<InsuranceCompany>>.value(
        value: db.insuranceCompanyData,
        child: StreamProvider<List<Hospitals>>.value(
          value: db.hospitalsData,
          child: StreamProvider<List<Pharmacies>>.value(
            value: db.pharmaciesData,
            child: StreamProvider<List<Lab>>.value(
              value: db.labsData,
              child: StreamProvider<List<Doctors>>.value(
                value: db.doctorsData,
                child: StreamProvider<List<LabResults>>.value(
                    value: db.labResultsData,
                    child: Home(
                      uid: widget.uid,
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
