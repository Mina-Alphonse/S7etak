
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Size_Config.dart';
import '../../../constraints.dart';

class PreviousHistoryCard extends StatelessWidget {
  const PreviousHistoryCard({
    Key key, this.name,  this.date, this.title2,
  }) : super(key: key);
  final String name,date,title2;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(15, 0, 15, 10),

          decoration: BoxDecoration(
            color: kliteColor,
            border: Border.all(color: kPrimaryColor,width: 1.0),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              SizedBox(width: getProptionateScreenWidth(15),),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: getProptionateScreenHeight(70),),

                  Row(
                    children: [
                      Text(
                        "Date : ",
                        style: TextStyle(

                          color: kPrimaryColor,
                          fontSize: 15,
                          fontFamily: mainFont,
                          fontWeight: FontWeight.bold,
                        ),


                      ),
                      Text(
                        date,
                        style: TextStyle(

                          color: kPrimaryLiteColor,
                          fontSize: 15,
                          fontFamily: mainFont,
                          fontWeight: FontWeight.bold,
                        ),


                      ),
                    ],
                  ),
                   SizedBox(height: 5,),
                  Text(
                    title2,
                    style: TextStyle(

                      color: kPrimaryColor,
                      fontSize: 15,
                      fontFamily: mainFont,
                      //fontWeight: FontWeight.bold,
                    ),


                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: getProptionateScreenWidth(80),
                      ),
                      FlatButton(

                        onPressed: (){},
                        child:Container(

                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                          decoration:BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ) ,
                          child: Text(
                            'Diagnoses',
                            style: TextStyle(
                              color: kliteColor,
                              fontSize: getProptionateScreenHeight(25),
                            ),
                          ),
                        ),

                      ),
                    ],
                  ),
                  SizedBox(height: 5,),

                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          height: getProptionateScreenHeight(60),
          decoration: BoxDecoration(
            color: kSecondaryColor,


            borderRadius: BorderRadius.vertical(
              top: Radius.circular(10),
            ),

          ),
          child: Row(
            children: [
              SizedBox(width: getProptionateScreenWidth(15),),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: getProptionateScreenHeight(10),),
                  Text(
                    name,
                    style: TextStyle(
                      color: kliteColor,
                      fontSize: 20,
                      fontFamily: mainFont,
                      fontWeight: FontWeight.bold,
                    ),
                  ),


                ],
              ),
            ],
          ),
        ),

      ],
    );
  }
}
