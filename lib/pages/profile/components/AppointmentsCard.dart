
import 'package:flutter/material.dart';

import '../../../Size_Config.dart';
import '../../../constraints.dart';

class AppointmentsCard extends StatelessWidget {
  const AppointmentsCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      height: getProptionateScreenHeight(150),

      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(height: getProptionateScreenHeight(52),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Appointment date:',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 13,
                          fontFamily: mainFont
                      ),
                    ),
                    Text(
                      'April 01, 2021 18:55',
                      style: TextStyle(
                          color: kSecondaryColor,
                          fontSize: 13,
                          fontFamily: mainFont
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dr. Youssef El-Shimy',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 15,
                            fontFamily: mainFont,
                            fontWeight: FontWeight.bold,
                          ),


                        ),
                        Text(
                          'Consaltant of Dermatology and Andrology',
                          style: TextStyle(
                              color: kPrimaryColor.withOpacity(0.7),
                              fontSize: 8,
                              fontFamily: mainFont
                          ),


                        ),
                      ],
                    ),
                    FlatButton(

                      onPressed: (){},
                      child:Container(
                        padding: EdgeInsets.symmetric(horizontal: 7,vertical: 10),
                        decoration:BoxDecoration(
                          border:Border.all(
                            width: 0.5,
                            color: kPrimaryColor,

                          ),
                          borderRadius: BorderRadius.circular(10),
                        ) ,
                        child: Text('Cancel'),
                      ),

                    ),
                  ],
                ),

              ],
            ),

            width: SizeConfig.screenWidth*0.8,
            height: getProptionateScreenHeight(200),
            decoration: BoxDecoration(
              color: Colors.white,
              border:Border.all(width: 1.0, color: kliteColor),
            ),
          ),
          Container(
            width: SizeConfig.screenWidth*0.8,
            height: getProptionateScreenHeight(50),
            alignment: Alignment.center,
            child: Text(
              'April , 2021',
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: getProptionateScreenHeight(30),
                fontFamily: mainFont,
                fontWeight: FontWeight.bold,

              ),
            ),
            color: kSecondaryliteColor.withOpacity(0.7),
          ),
        ],
      ),
    );
  }
}
