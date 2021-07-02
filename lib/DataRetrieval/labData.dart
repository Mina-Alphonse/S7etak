import 'package:flutter/material.dart';
import 'package:gp/pages/LoadingPage.dart';
import 'package:gp/stakeholdersClases/Labs.dart';
import 'package:provider/provider.dart';

class LabData extends StatefulWidget {
  const LabData({Key key}) : super(key: key);

  @override
  _LabDataState createState() => _LabDataState();
}

class _LabDataState extends State<LabData> {
  @override
  Widget build(BuildContext context) {

    List<Lab> labs = Provider.of<List<Lab>>(context);
    if(labs != null)
      {
        print(labs[0].name);
      }

    return LoadingPage();
  }
}
