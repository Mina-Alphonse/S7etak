import 'package:flutter/cupertino.dart';
import 'package:gp/DataComponents/AllDatabaseModel.dart';
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

class AllDBModel2 extends StatefulWidget {
  final String uid;

  const AllDBModel2({Key key, this.uid}) : super(key: key);

  @override
  _AllDBModel2State createState() => _AllDBModel2State();
}

class _AllDBModel2State extends State<AllDBModel2> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Hospitals>>.value(
      value: DatabaseService().hospitalsData,
      child: StreamProvider<List<Doctors>>.value(
          value: DatabaseService().doctorsData,
          child: AllDBModel(
            uid: widget.uid,
          )),
    );
  }
}
