import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp/pages/Explore/components/header.dart';
import 'package:gp/stakeholdersClases/Hospitals.dart';
import 'package:gp/stakeholdersClases/InsuranceCompany.dart';
import 'package:gp/stakeholdersClases/Labs.dart';
import 'package:gp/stakeholdersClases/Pharmacies.dart';


class Explore extends StatefulWidget {
  final InsuranceCompany insuranceCompany;
  final List<Hospitals> hospitalsList;
  final List<Lab> labsList;
  final List<Pharmacies> pharmaciesList;

  Explore({this.insuranceCompany,this.hospitalsList,this.pharmaciesList,this.labsList});
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
          child: Header(insuranceCompany: widget.insuranceCompany, hospitalsList: widget.hospitalsList,labsList: widget.labsList,pharmaciesList: widget.pharmaciesList,)
      ),
    );
  }
}
