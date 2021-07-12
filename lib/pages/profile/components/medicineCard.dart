
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Size_Config.dart';
import '../../../constraints.dart';

class MedicineCard extends StatelessWidget {
  const MedicineCard({
    Key key, this.name, this.description,
  }) : super(key: key);
  final String name,description;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kliteColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(1, 1), // changes position of shadow
          ),
        ],
      ),
      margin: EdgeInsets.fromLTRB(10, 0, 10, 5),

      child: Column(
        children: [
          Row(
            children: [
              //image
              Container(
                margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                height: getProptionateScreenHeight(135),
                width: getProptionateScreenWidth(132),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: FittedBox(
                    child: Image.asset(
                      'pan.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                padding: EdgeInsets.all(4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: getProptionateScreenWidth(190),
                      child: Text(
                          'Panadol Advance',
                        style: TextStyle(
                          color: kSecondaryColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: mainFont,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      width: getProptionateScreenWidth(190),
                        child: Text('Fever,Cold & Flu symptoms,Headache ,Migrains,Period Pain',
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.7),
                            //fontWeight: FontWeight.bold,
                            fontFamily: mainFont,
                            fontSize: 12,
                          ),
                        )
                    ),
                    Row(
                      children: [
                        Text(
                          'Reminder: ',
                          style: TextStyle(
                            color: kSecondaryliteColor,
                            fontWeight: FontWeight.bold,
                            fontFamily: mainFont,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          '12 hours',
                          style: TextStyle(
                            color: kSecondaryColor,
                            //fontWeight: FontWeight.bold,
                            fontFamily: mainFont,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(

                onPressed: (){},
                child:Container(

                  padding: EdgeInsets.symmetric(horizontal: 25,vertical: 8),
                  decoration:BoxDecoration(

                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: kPrimaryColor,width: 1),
                  ) ,
                  child: Text(
                    'Delete',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: getProptionateScreenHeight(25),
                      fontFamily: mainFont
                    ),
                  ),
                ),

              ),
              // FlatButton(
              //
              //   onPressed: (){},
              //   child:Container(
              //
              //     padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
              //     decoration:BoxDecoration(
              //       color: kPrimaryColor,
              //       borderRadius: BorderRadius.circular(10),
              //     ) ,
              //     child: Text(
              //       'Purchase',
              //       style: TextStyle(
              //         color: kliteColor,
              //         fontFamily: mainFont,
              //         fontSize: getProptionateScreenHeight(25),
              //       ),
              //     ),
              //   ),
              //
              // ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
