import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp/Size_Config.dart';
import 'package:gp/auth.dart';
import 'package:gp/pages/Home/Components/Body.dart';

import '../../constraints.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

List<String> asami = [
  "Appointments",
  "Medical History",
  "Personal Info",
  "Log out",
  "",
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
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
           backgroundColor: kPrimaryColor,// kSecondaryliteColor.withOpacity(0.6),
           //toolbarHeight: getProptionateScreenHeight(60),

           actions: [


             GestureDetector(
                 child: Icon(Icons.person,size: 30,),
               onTap: (){
                   Navigator.pushNamed(context, '/Profile');
               },
             ),
             SizedBox(width: SizeConfig.screenWidth*0.05,
             )
           ],


         ),
        drawer: Drawer(

          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                 kPrimaryColor,
                  kPrimaryColor.withOpacity(0.5),
                  kPrimaryColor.withOpacity(0.3),
                  kliteColor.withOpacity(0.3)
                ]
              )
            ),
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  // height: MediaQuery.of(context).size.height / 3,
                  accountEmail: Text(
                    "Fonsi@gmail.com",
                    style: TextStyle(color: kliteColor),
                  ),
                  accountName: Text(
                    "Mina Alphonse",
                    style: TextStyle(
                        color: kliteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 25

                    ),
                  ),
                  decoration: BoxDecoration(color: kPrimaryColor),
                ),
                ListView.builder(
                    itemCount: asami.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(

                        trailing: Icon(Icons.icecream,color: kPrimaryColor,),
                        title: Text(
                          asami[index],
                          style: TextStyle(color: kPrimaryColor),
                        ),
                        onTap: () {},
                      );
                    })
              ],

            ),
          ),

        ),
        body: SafeArea(
          child: SingleChildScrollView(child: Body()),
        ));
  }
}
