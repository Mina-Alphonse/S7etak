
import 'package:flutter/material.dart';

import '../../../Size_Config.dart';
import '../../../constraints.dart';


class MeasureHeartRhythm extends StatelessWidget {


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
          'Measure Heart Rhythm',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontFamily: mainFont,

          ),
        ),

      ),
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 12,),
              Container(
                margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
                padding: EdgeInsets.symmetric(vertical: 5),
                height: SizeConfig.screenHeight*0.8,
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow:  [

                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                    ),

              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }

}
