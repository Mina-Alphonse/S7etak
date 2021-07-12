import 'package:flutter/material.dart';
import 'package:gp/database.dart';
import 'package:gp/stakeholdersClases/Doctors.dart';
import 'package:gp/stakeholdersClases/Hospitals.dart';
import 'package:gp/stakeholdersClases/InsuranceCompany.dart';
import 'package:gp/stakeholdersClases/Labs.dart';
import 'package:gp/stakeholdersClases/Pharmacies.dart';

import 'package:provider/provider.dart';

import 'CategoriesListWidget.dart';

class Body extends StatefulWidget {
  final InsuranceCompany insuranceCompany;
  final List<Hospitals> hospitalsList;
  final List<Lab> labsList;
  final List<Pharmacies> pharmaciesList;
  final List<Doctors> doctorsList;

  const Body(
      {Key key,
      this.insuranceCompany,
      this.hospitalsList,
      this.pharmaciesList,
      this.labsList,
      this.doctorsList})
      : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  build(BuildContext context) {
    List<Doctors> doctors = [];
    List<Pharmacies> pharmacies = [];
    List<Hospitals> hospitals = [];
    List<Lab> labs = [];
    for (int i = 0; i < 2; i++) {
      doctors.add(widget.doctorsList[i]);
      pharmacies.add(widget.pharmaciesList[i]);
      hospitals.add(widget.hospitalsList[i]);
      labs.add(widget.labsList[i]);
    }
    return StreamProvider<List<Lab>>.value(
      value: DatabaseService().labsData,
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TabBarView(
                children: [
                  CategoriesWidget(
                      "Explore",
                      widget.insuranceCompany,
                      widget.hospitalsList,
                      widget.pharmaciesList,
                      widget.labsList,
                      widget.doctorsList),
                  CategoriesWidget("Recommended", widget.insuranceCompany,
                      hospitals, pharmacies, labs, doctors),
                  CategoriesWidget(
                      "Saved",
                      widget.insuranceCompany,
                      savedHospitals ?? [],
                      [],
                      [],
                      widget.doctorsList),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
