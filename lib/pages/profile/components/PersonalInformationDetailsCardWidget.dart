

import 'package:flutter/material.dart';
import 'package:gp/GlobalComponents/BookButton.dart';
import 'package:gp/GlobalComponents/custom_horizontal_row.dart';
import 'package:gp/pages/profile/components/personalinforows.dart';

import '../../../Size_Config.dart';
import '../../../constraints.dart';

class PersonalInformationDetailsCardWidget extends StatelessWidget {
  const PersonalInformationDetailsCardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
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
      // height: getProptionateScreenHeight(150),

      child: Column(

        children: [
          //
          Container(
            margin:  EdgeInsets.symmetric(horizontal: 5,vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Patient\'s name',
                  style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: 20,
                      fontFamily: mainFont,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                CustomHorizontalRow(text: 'ID info',),
                SizedBox(height: 10,),
                personalinforows(text:'221615xxxxxxx',text2: 'ID',),
                Divider(
                  thickness: 0.5,
                  color: Colors.black.withOpacity(0.5),
                ),
                personalinforows(text:'Fonsi',text2: 'User name',),
                Divider(
                  thickness: 0.5,
                  color: Colors.black.withOpacity(0.5),
                ),
                personalinforows(text:'Fonsi',text2: 'Insurance Company',),
                Divider(
                  thickness: 0.5,
                  color: Colors.black.withOpacity(0.5),
                ),
                personalinforows(text:'fonsi@gmail.com',text2: 'Email',),
                Divider(
                  thickness: 0.5,
                  color: Colors.black.withOpacity(0.5),
                ),
                personalinforows(text:'0109xxxxxxx',text2: 'Phone no.',),
                Divider(
                  thickness: 0.5,
                  color: Colors.black.withOpacity(0.5),
                ),
                personalinforows(text:'23',text2: 'Age',),
                Divider(
                  thickness: 0.5,
                  color: Colors.black.withOpacity(0.5),
                ),
                personalinforows(text:'male',text2: 'Gender',),
                SizedBox(height: 10,),
                CustomHorizontalRow(text: 'Medical info',),
                SizedBox(height: 10,),
                personalinforows(text:'120-80',text2: 'blood pressure rate',),
                Divider(
                  thickness: 0.5,
                  color: Colors.black.withOpacity(0.5),
                ),
                personalinforows(text:'No',text2: 'Diabetic',),


              ],
            ),
          ),


        ],
      ),
    );
  }
}
