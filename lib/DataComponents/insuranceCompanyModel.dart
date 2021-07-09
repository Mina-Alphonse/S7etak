import 'package:flutter/material.dart';
import 'package:gp/DataRetrieval/insuranceCompanyData.dart';
import 'package:gp/database.dart';
import 'package:gp/stakeholdersClases/InsuranceCompany.dart';
import 'package:provider/provider.dart';

class InsuranceCompanyModel extends StatefulWidget {
  const InsuranceCompanyModel({Key key}) : super(key: key);

  @override
  _InsuranceCompanyModelState createState() => _InsuranceCompanyModelState();
}

class _InsuranceCompanyModelState extends State<InsuranceCompanyModel> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<InsuranceCompany>>.value(
      value: DatabaseService().insuranceCompanyData,
      child: Container(
        child: CompanyData(),
      ),
    );
  }
}
