
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp/GlobalComponents/titlesInMainApp.dart';
import 'package:gp/Size_Config.dart';
import 'package:gp/constraints.dart';
import 'package:gp/pages/Explore/components/categorieslist.dart';
import 'package:gp/pages/Home/Components/HomePanner.dart';
import 'package:gp/pages/Home/Components/HomeFeatures.dart';
import 'package:gp/pages/Home/Components/ServicesSearch.dart';

import '../../../GlobalComponents/searchBarWidget.dart';
import 'OptionsinHome.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(


      child: Stack(
        children: [
          Container(
            height: SizeConfig.screenHeight*0.35,
            decoration: BoxDecoration(
              color: kSecondaryliteColor.withOpacity(0.6),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(5),
              ),
                boxShadow:[ BoxShadow( color: Colors.grey.shade400,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0,3),
                ),


                ]

            ),
          ),
          Center(
            child: Column(
              children: [

                SizedBox(
                  height:getProptionateScreenHeight(15) ,

                ),
                Row(
                 //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: SizeConfig.screenWidth*0.20,),
                    Container(child: titlesInMainApp(text: 'Health Care',)),
                    SizedBox(width: SizeConfig.screenWidth*0.10,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/Profile');
                      },
                      child: Container(
                        child: Icon(
                          Icons.person,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth*0.05,),
                  child: Divider(
                    color: Colors.white,
                    thickness: 0.5,

                  ),
                ),

                SizedBox(
                  height:getProptionateScreenHeight(10) ,
                ),
                HomePanner(),
                SizedBox(
                  height:getProptionateScreenHeight(10) ,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Icon(Icons.arrow_back_ios_rounded,size: 15,),
                    Container(
                      padding: EdgeInsets.fromLTRB(3, 0, 3 , 7),
                      height: getProptionateScreenHeight(280),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow:[ BoxShadow( color: Colors.grey.shade400,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(3,3),
                        ),


                          ]
                      ),

                      width: SizeConfig.screenWidth*0.9 ,
                      //margin: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth*0.1),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            HomeFeatures(

                              image:'assets/med.jpg',
                              textMAin:'OverView',
                              textMin:'Medicine',

                            ),
                            HomeFeatures(

                              image:'assets/beat.jpg',
                              textMAin:'Measure',
                              textMin:'Heart rhythm',

                            ),
                            HomeFeatures(

                              image:'assets/labs.jpg',
                              textMAin:'Results',
                              textMin:'Labs',

                            ),
                            HomeFeatures(

                              image:'assets/appointmnents.jpg',
                              textMAin:'Scheduled',
                              textMin:'Appointments',

                            ),

                          ],
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios,size: 15,),
                  ],
                ),


                SizedBox(height: getProptionateScreenHeight(5),),
                Container(
                  height: SizeConfig.screenWidth*0.6,
                    width: SizeConfig.screenWidth*0.9,
                  child: Row(

                    children: [
                      Container(
                        height: SizeConfig.screenWidth*0.6,
                        width: SizeConfig.screenWidth*0.35,
                        decoration: BoxDecoration(
                         // color: kPrimaryColor,
                        ),
                        child: Column(
                          children: [
                            OptionsInHome(text:"Chronic Diseases"),
                            OptionsInHome(text:"Personal info"),
                            OptionsInHome(text:"Medical insurance"),

                          ],
                        ),
                      ),
                      GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/Explore');
                          },
                          child: Servicesbanner()),
                    ],
                  ),
                ),




              ],
            ),
          ),
        ],
      ),
    );
  }
}
