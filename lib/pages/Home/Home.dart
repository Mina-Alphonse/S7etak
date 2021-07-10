import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp/Size_Config.dart';
import 'package:gp/pages/Home/Components/Body.dart';
import 'package:gp/pages/LoadingPage.dart';
import 'package:gp/stakeholdersClases/labResults.dart';
import 'package:provider/provider.dart';
import 'package:gp/stakeholdersClases/Hospitals.dart';
import 'package:gp/stakeholdersClases/InsuranceCompany.dart';
import 'package:gp/stakeholdersClases/Labs.dart';
import 'package:gp/stakeholdersClases/Patients.dart';
import 'package:gp/stakeholdersClases/Pharmacies.dart';

import '../../auth.dart';
import '../../constraints.dart';
import '../../stakeholdersClases/Doctors.dart';
import '../profile/profile.dart';

class Home extends StatefulWidget {
  final String uid;

  Home({this.uid});

  @override
  _HomeState createState() => _HomeState();
}

List<String> drawerOptions = [
  "Personal information",
  "Log out",
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<Lab> labs = Provider.of<List<Lab>>(context);
    List<Pharmacies> pharmacies = Provider.of<List<Pharmacies>>(context);
    List<InsuranceCompany> companies =
        Provider.of<List<InsuranceCompany>>(context);
    Patients user = Provider.of<Patients>(context);
    List<Hospitals> hospitals = Provider.of<List<Hospitals>>(context);
    List<LabResults> labResults = Provider.of<List<LabResults>>(context);
    List<Doctors> doctors = Provider.of<List<Doctors>>(context);

    if (labs != null &&
        pharmacies != null &&
        companies != null &&
        user != null &&
        hospitals != null) {
      InsuranceCompany userCompany;
      List<Hospitals> userHospitals = List<Hospitals>();

      companies.forEach((company) {
        if (company.name == user.insuranceCompany) {
          userCompany = company;
        }
      });
      hospitals.forEach((hospital) {
        userCompany.places.forEach((place) {
          if (place.placeType == 'Hospital' &&
              place.name == hospital.hospitalName) {
            userHospitals.add(hospital);
          }
        });
      });
      print(userHospitals);

      return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 5.0,

            title: Text(
              "S7etak",
              style: TextStyle(
                fontFamily: mainFont,
                fontSize: getProptionateScreenWidth(30),
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            backgroundColor: kPrimaryColor,
            // kSecondaryliteColor.withOpacity(0.6),
            //toolbarHeight: getProptionateScreenHeight(60),

            actions: [
              GestureDetector(
                child: Icon(
                  Icons.person,
                  size: 30,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Profile(
                                patient: user,
                                labs: labs,
                                doctors: doctors,
                                labResults: labResults,
                              )));
                },
              ),
              SizedBox(
                width: SizeConfig.screenWidth * 0.05,
              )
            ],
          ),
          drawer: Drawer(
            child: Container(
              // decoration: BoxDecoration(
              //     gradient: LinearGradient(
              //         begin: Alignment.topCenter,
              //         end: Alignment.bottomCenter,
              //         colors: <Color> [
              //       kPrimaryColor,
              //       kPrimaryColor.withOpacity(0.5),
              //       kPrimaryColor.withOpacity(0.3),
              //       kliteColor.withOpacity(0.3)
              //     ],
              //     )),
              child: Column(
                children: [
                  UserAccountsDrawerHeader(
                    // height: MediaQuery.of(context).size.height / 3,
                    accountEmail: Text(
                      user.mail,
                      style: TextStyle(color: kliteColor),
                    ),
                    accountName: Text(
                      user.name,
                      style: TextStyle(
                          color: kliteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    decoration: BoxDecoration(color: kPrimaryColor),
                  ),
                  ListTile(
                    trailing: Icon(
                      Icons.account_circle_rounded,
                      color: kPrimaryColor,
                    ),
                    title: Text(
                      drawerOptions[0],
                      style: TextStyle(color: kPrimaryColor),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Profile(
                                    patient: user,
                                    labs: labs,
                                    doctors: doctors,
                                    labResults: labResults,
                                  )));
                    },
                  ),
                  ListTile(
                    trailing: Icon(
                      Icons.logout,
                      color: kPrimaryColor,
                    ),
                    title: Text(
                      drawerOptions[1],
                      style: TextStyle(color: kPrimaryColor),
                    ),
                    onTap: () async {
                      await AuthService().signOut();
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/SignIn', (route) => false);
                    },
                  )
                ],
              ),
            ),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
                child: Body(
              insuranceCompany: userCompany,
              hospitalsList: userHospitals,
            )),
          ));
    } else
      return LoadingPage();
    // body: SafeArea(
    //     child: SingleChildScrollView(child: Body()),
  }
}
