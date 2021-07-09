
import 'package:flutter/material.dart';

import '../../../Size_Config.dart';
import '../../../constraints.dart';
import 'PersonalInformationDetailsCardWidget.dart';

class PersonalInformationCardDetails extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading:  GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: kPrimaryColor,

          ),
        ),
        backgroundColor: kliteColor,
        centerTitle: true,
        title: Text(
          'Personal Info',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontFamily: mainFont,

          ),
        ),
        actions: [


          GestureDetector(
            child: Icon(Icons.edit,size: 30,color: kPrimaryColor,),
            onTap: (){
              Navigator.pushNamed(context, '/Profile',);
            },
          ),
          SizedBox(width: SizeConfig.screenWidth*0.05,
          )
        ],
      ),
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 12,),
              Container(
                child:PersonalInformationDetailsCardWidget(),
                    ),

              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }

}
