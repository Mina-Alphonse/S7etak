import 'package:flutter/material.dart';
import 'package:gp/stakeholdersClases/InsuranceCompany.dart';
import 'package:provider/provider.dart';

class CompanyData extends StatefulWidget {
  const CompanyData({Key key}) : super(key: key);

  @override
  _CompanyDataState createState() => _CompanyDataState();
}

class _CompanyDataState extends State<CompanyData> {
  @override
  Widget build(BuildContext context) {

    List<InsuranceCompany> companies = Provider.of<List<InsuranceCompany>>(context);
    if(companies != null)
    {
      print(companies[0].name);
      print(companies[0].packages[0].places);
      print(companies[0].places[0].name);
    }
    return Container(child: Text('run'),);

    // return LoadingPage();
  }
}