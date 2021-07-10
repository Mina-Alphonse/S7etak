
import 'package:flutter/material.dart';
import 'package:gp/database.dart';
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

  const Body({
    Key key,this.insuranceCompany, this.hospitalsList,this.pharmaciesList,this.labsList,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override


  build(BuildContext context) {

    return StreamProvider<List<Lab>>.value(
      value: DatabaseService().labsData,
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TabBarView(
                children: [
                  CategoriesWidget("Explore",widget.insuranceCompany,widget.hospitalsList,widget.pharmaciesList,widget.labsList),
                  CategoriesWidget("Recommended",widget.insuranceCompany,widget.hospitalsList,widget.pharmaciesList,widget.labsList),
                  CategoriesWidget("Saved",widget.insuranceCompany,widget.hospitalsList,widget.pharmaciesList,widget.labsList),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
