
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp/constraints.dart';
import 'package:gp/pages/Explore/Explore.dart';

import 'package:gp/pages/Home/Components/HomeContainers.dart';
import 'package:gp/pages/profile/components/MedicalLabsResults.dart';
import 'package:gp/stakeholdersClases/Doctors.dart';
import 'package:gp/stakeholdersClases/Hospitals.dart';
import 'package:gp/stakeholdersClases/InsuranceCompany.dart';
import 'package:gp/stakeholdersClases/Labs.dart';
import 'package:gp/stakeholdersClases/Pharmacies.dart';
import 'package:gp/stakeholdersClases/labResults.dart';

import '../../profile/components/appointmentsWithMedicalLabs.dart';

class Body extends StatelessWidget {
  final InsuranceCompany insuranceCompany;
  final List<Hospitals> hospitalsList;
  final List<Lab> labsList;
  final List<Pharmacies> pharmaciesList;
  final List<Doctors> doctorsList;
  final List<LabResults> labResultsList;
  const Body({
    Key key,
    this.doctorsList,
    this.pharmaciesList,
    this.labsList,
    this.hospitalsList,
    this.insuranceCompany,
    this.labResultsList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(


      child: Center(
        child: Column(
          children: [
            SizedBox(height: 10,),
            GestureDetector(
                onTap: (){
                  // Navigator.pushNamed(context, '/Explore');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Explore(insuranceCompany: insuranceCompany,
                      hospitalsList: hospitalsList,pharmaciesList: pharmaciesList,labsList: labsList,doctorsList: this.doctorsList,)),
                  );
                },
                child: HomeContainers(
                  imgURL: 'assets/Searchbanner.jpg',
                  text1: 'Search',
                  text2: 'For Services',
                  color: kPrimaryColor,
                  txtColor: kliteColor,
                )
            ),
            // GestureDetector(
            //     onTap: (){
            //       //Navigator.pushNamed(context, '/Explore');
            //     },
            //     child: HomeContainers(
            //       imgURL: 'assets/stats.jpg',
            //       text1: 'Statistics',
            //       text2: 'For Health',
            //       color: kliteColor,
            //       txtColor: kPrimaryColor,
            //     )
            // ),
            GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/MedicineList');
                },
                child: HomeContainers(
                  imgURL: 'assets/med.jpg',
                  text1: 'Medicine',
                  text2: 'Overview',
                  color: kSecondaryliteColor,
                  txtColor: kliteColor,
                )
            ),
            // GestureDetector(
            //     onTap: (){
            //       Navigator.pushNamed(context, '/MeasureHeartRhythm');
            //     },
            //     child: HomeContainers(
            //       imgURL: 'assets/beat.jpg',
            //       text1: 'Measure',
            //       text2: 'Heart rhythm',
            //       color: kPrimaryColor,
            //       txtColor: kliteColor,
            //     )
            // ),

            GestureDetector(
                onTap: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => MedicalLabsResults(
                    labResults: this.labResultsList,
                    )));
                    // Navigator.pushNamed(context, '/MedicalLabsResults');
                  },

                child: HomeContainers(
                  imgURL: 'assets/labs.jpg',
                  text1: 'Labs',
                  text2: 'Results',
                  color: kliteColor,
                  txtColor: kPrimaryColor,
                )
            ),
            GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AppointmentsMedicalDoctors(
                            doctors: doctorsList,
                          )));
                },
                child: HomeContainers(
                  imgURL: 'assets/appointmnents.jpg',
                  text1: 'Schedule',
                  text2: 'Appointments',
                  color: kSecondaryColor,
                  txtColor: kliteColor,
                )
            ),

            // SizedBox(
            //   height:getProptionateScreenHeight(10) ,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //
            //   children: [
            //     Icon(Icons.arrow_back_ios_rounded,size: 15,),
            //     Container(
            //       padding: EdgeInsets.fromLTRB(3, 0, 3 , 7),
            //       height: getProptionateScreenHeight(280),
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(10),
            //         color: Colors.white,
            //         boxShadow:[ BoxShadow( color: Colors.grey.shade400,
            //           spreadRadius: 1,
            //           blurRadius: 1,
            //           offset: Offset(3,3),
            //         ),
            //
            //
            //           ]
            //       ),
            //
            //       width: SizeConfig.screenWidth*0.9 ,
            //       //margin: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth*0.1),
            //       child: SingleChildScrollView(
            //         scrollDirection: Axis.horizontal,
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             HomeFeatures(
            //
            //               image:'assets/med.jpg',
            //               textMAin:'OverView',
            //               textMin:'Medicine',
            //
            //             ),
            //             HomeFeatures(
            //
            //               image:'assets/beat.jpg',
            //               textMAin:'Measure',
            //               textMin:'Heart rhythm',
            //
            //             ),
            //             HomeFeatures(
            //
            //               image:'assets/labs.jpg',
            //               textMAin:'Results',
            //               textMin:'Labs',
            //
            //             ),
            //             HomeFeatures(
            //
            //               image:'assets/appointmnents.jpg',
            //               textMAin:'Scheduled',
            //               textMin:'Appointments',
            //
            //             ),
            //
            //           ],
            //         ),
            //       ),
            //     ),
            //     Icon(Icons.arrow_forward_ios,size: 15,),
            //   ],
            // ),
            //
            //
            // SizedBox(height: getProptionateScreenHeight(5),),
           // HomeContainers(),





          ],
        ),
      ),
    );
  }
}
