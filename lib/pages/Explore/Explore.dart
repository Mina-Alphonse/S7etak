import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp/pages/Explore/components/header.dart';
import 'package:gp/stakeholdersClases/Hospitals.dart';
import 'package:gp/stakeholdersClases/InsuranceCompany.dart';


class Explore extends StatefulWidget {
  final InsuranceCompany insuranceCompany;
  final List<Hospitals> hospitalsList;

  Explore({this.insuranceCompany,this.hospitalsList});
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
          child: Header(insuranceCompany: widget.insuranceCompany, hospitalsList: widget.hospitalsList,)
      ),
    );
  }
}
