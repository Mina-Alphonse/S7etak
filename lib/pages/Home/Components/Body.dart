
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp/GlobalComponents/titlesInMainApp.dart';
import 'package:gp/Size_Config.dart';
import 'package:gp/constraints.dart';
import 'package:gp/pages/Explore/components/categorieslist.dart';

import 'package:gp/pages/Home/Components/HomeFeatures.dart';
import 'package:gp/pages/Home/Components/HomeContainers.dart';

import '../../../GlobalComponents/searchBarWidget.dart';
import 'OptionsinHome.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
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
                  Navigator.pushNamed(context, '/Explore');
                },
                child: HomeContainers(
                  imgURL: 'assets/Searchbanner.jpg',
                  text1: 'Search',
                  text2: 'For Services',
                  color: kPrimaryColor,
                  txtColor: kliteColor,
                )
            ),
            GestureDetector(
                onTap: (){
                  //Navigator.pushNamed(context, '/Explore');
                },
                child: HomeContainers(
                  imgURL: 'assets/stats.jpg',
                  text1: 'Statistics',
                  text2: 'For Health',
                  color: kliteColor,
                  txtColor: kPrimaryColor,
                )
            ),
            GestureDetector(
                onTap: (){
                 // Navigator.pushNamed(context, '/Explore');
                },
                child: HomeContainers(
                  imgURL: 'assets/med.jpg',
                  text1: 'Medicine',
                  text2: 'Overview',
                  color: kSecondaryliteColor,
                  txtColor: kliteColor,
                )
            ),
            GestureDetector(
                onTap: (){
                 // Navigator.pushNamed(context, '/Explore');
                },
                child: HomeContainers(
                  imgURL: 'assets/beat.jpg',
                  text1: 'Measure',
                  text2: 'Heart rhythm',
                  color: kPrimaryColor,
                  txtColor: kliteColor,
                )
            ),

            GestureDetector(
                onTap: (){
                  //Navigator.pushNamed(context, '/Explore');
                },
                child: HomeContainers(
                  imgURL: 'assets/labs.jpg',
                  text1: 'Results',
                  text2: 'Labs',
                  color: kliteColor,
                  txtColor: kPrimaryColor,
                )
            ),
            GestureDetector(
                onTap: (){
                 // Navigator.pushNamed(context, '/Explore');
                },
                child: HomeContainers(
                  imgURL: 'assets/appointmnents.jpg',
                  text1: 'Scheduled',
                  text2: 'Scheduled',
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
