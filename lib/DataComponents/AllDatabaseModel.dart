import 'package:flutter/cupertino.dart';
import 'package:gp/database.dart';
import 'package:gp/pages/Home/Home.dart';
import 'package:gp/stakeholdersClases/Hospitals.dart';
import 'package:gp/stakeholdersClases/InsuranceCompany.dart';
import 'package:gp/stakeholdersClases/Labs.dart';
import 'package:gp/stakeholdersClases/Patients.dart';
import 'package:gp/stakeholdersClases/Pharmacies.dart';
import 'package:provider/provider.dart';

class AllDBModel extends StatefulWidget {
  final String uid;
  const AllDBModel({Key key,this.uid}) : super(key: key);

  @override
  _AllDBModelState createState() => _AllDBModelState();
}

class _AllDBModelState extends State<AllDBModel> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<Patients>.value(
      value: DatabaseService(uid: widget.uid).patientData,
      child: StreamProvider<List<InsuranceCompany>>.value(
        value: DatabaseService().insuranceCompanyData,
        child: StreamProvider<List<Hospitals>>.value(
          value: DatabaseService().hospitalsData,
          child: StreamProvider<List<Pharmacies>>.value(
            value: DatabaseService().pharmaciesData,
            child: StreamProvider<List<Lab>>.value(
              value: DatabaseService().labsData,
              child: Home(uid: widget.uid,),
            ),
          ),
        ) ,
      ),
    );
  }
}
