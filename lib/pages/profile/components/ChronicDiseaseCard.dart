
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Size_Config.dart';
import '../../../constraints.dart';

class ChronicDiseaseCard extends StatelessWidget {
  const ChronicDiseaseCard({
    Key key, this.name, this.description,
  }) : super(key: key);
  final String name,description;
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

                  Container(
                    width: getProptionateScreenWidth(300),
                    child: Text(
                      description,
                      style: TextStyle(

                        color: kPrimaryLiteColor,
                        fontSize: 13,
                        fontFamily: mainFont,
                        //fontWeight: FontWeight.bold,
                      ),


                    ),
                  ),
                 // SizedBox(height: 5,),
                  Row(
                    children: [
                      SizedBox(
                        width: getProptionateScreenWidth(200),
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
                              'Charts',
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
