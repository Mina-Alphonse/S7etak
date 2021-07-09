import 'package:flutter/cupertino.dart';
import 'package:gp/pages/LoadingPage.dart';
import 'package:gp/stakeholdersClases/Hospitals.dart';
import 'package:provider/provider.dart';

class HospitalsData extends StatefulWidget {
  const HospitalsData({Key key}) : super(key: key);

  @override
  _HospitalsDataState createState() => _HospitalsDataState();
}

class _HospitalsDataState extends State<HospitalsData> {
  @override
  Widget build(BuildContext context) {
    // refresh();
    List<Hospitals> hospitals = Provider.of<List<Hospitals>>(context);

    if (hospitals != null && hospitals[0].doctors != null) {
      print(hospitals[0].hospitalName);
      print(hospitals[0].doctors[0]);
    }
    return LoadingPage();
  }

  void refresh() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        print("refreshed");
      });
    });
  }
}
