import 'package:flutter/material.dart';
import 'package:gp/pages/LoadingPage.dart';
import 'package:gp/stakeholdersClases/Pharmacies.dart';
import 'package:provider/provider.dart';

class PharmacyData extends StatefulWidget {
  const PharmacyData({Key key}) : super(key: key);

  @override
  _PharmacyDataState createState() => _PharmacyDataState();
}

class _PharmacyDataState extends State<PharmacyData> {
  @override
  Widget build(BuildContext context) {

    List<Pharmacies> pharmacies = Provider.of<List<Pharmacies>>(context);
    if(pharmacies != null)
      {
        print(pharmacies[0].name);
        print(pharmacies[0].address);
      }
    return LoadingPage();
  }
}
