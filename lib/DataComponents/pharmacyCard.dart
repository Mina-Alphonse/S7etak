import 'package:flutter/material.dart';
import 'package:gp/DataRetrieval/pharmacyData.dart';
import 'package:gp/database.dart';
import 'package:gp/stakeholdersClases/Pharmacies.dart';
import 'package:provider/provider.dart';

class PharmacyCard extends StatefulWidget {
  const PharmacyCard({Key key}) : super(key: key);

  @override
  _PharmacyCardState createState() => _PharmacyCardState();
}

class _PharmacyCardState extends State<PharmacyCard> {
  @override
  Widget build(BuildContext context) {

    return StreamProvider<List<Pharmacies>>.value(
      value: DatabaseService().pharmaciesData,
      child: PharmacyData(),
    );
  }
}
