import 'package:flutter/material.dart';
import 'package:gp/database.dart';
import 'package:gp/stakeholdersClases/Labs.dart';
import 'package:gp/stakeholdersClases/testbody.dart';
import 'package:provider/provider.dart';

class LabCard extends StatefulWidget {
  const LabCard({Key key}) : super(key: key);

  @override
  _LabCardState createState() => _LabCardState();
}

class _LabCardState extends State<LabCard> {
  @override
  Widget build(BuildContext context) {

    return StreamProvider<List<Lab>>.value(
        value:DatabaseService().labsData,
        child: Container(
          child: Container(),
      )
    );
  }
}
