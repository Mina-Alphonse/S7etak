import 'package:flutter/cupertino.dart';
import 'package:gp/DataRetrieval/HospitalsData.dart';
import 'package:gp/database.dart';
import 'package:gp/stakeholdersClases/Hospitals.dart';
import 'package:provider/provider.dart';

class HospitalModel extends StatefulWidget {
  const HospitalModel({Key key}) : super(key: key);

  @override
  _HospitalModelState createState() => _HospitalModelState();
}

class _HospitalModelState extends State<HospitalModel> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Hospitals>>.value(
      value: DatabaseService().hospitalsData,
      child: Container(
        child: HospitalsData(),
      ),
    );
  }
}
