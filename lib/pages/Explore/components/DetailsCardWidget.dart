

import 'package:flutter/material.dart';

import '../../../Size_Config.dart';
import '../../../constraints.dart';

class DetailesCard extends StatelessWidget {
  const DetailesCard({
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
          Container(
            width: SizeConfig.screenWidth*0.8,
            decoration: BoxDecoration(
              color: kliteColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow:  [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(1, 2), // changes position of shadow
                ),
              ],
            ),
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              width: SizeConfig.screenWidth*0.6,
              child: Image(
                fit: BoxFit.contain,
                image:  AssetImage('assets/d1.jpeg',),
                alignment: Alignment.center,
              ),
            ),
          ),
          Container(
            margin:  EdgeInsets.symmetric(horizontal: 5,vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: SizeConfig.screenWidth*0.5,
                      child: Row(
                        children: [
                          Text(
                            'doctor\'s name',
                            style: TextStyle(
                                color: kSecondaryColor,
                                fontSize: 20,
                                fontFamily: mainFont,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(width: 5,),
                          Icon(
                            Icons.verified_user,
                            color: kSecondaryliteColor,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'doctor\'s field',
                      style: TextStyle(
                        color: kPrimaryColor.withOpacity(0.6),
                        fontSize: 15,
                        fontFamily: mainFont,

                      ),
                    ),
                    Text(
                      'doctor\'s degree',
                      style: TextStyle(
                        color: kSecondaryliteColor,
                        fontSize: 15,
                        fontFamily: mainFont,

                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: kSecondaryliteColor,
                    boxShadow:  [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: FlatButton(
                    onPressed: (){},
                    child: Text(
                      "\$ 20",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 30,
                          fontFamily: mainFont
                      ),
                    ),


                  ),
                ),
              ],
            ),
          ),
          Container(
            width: SizeConfig.screenWidth*0.83,
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has beenthe industry\'s standard dummy text ever since the1500s, when anunknown printer took a galley oftype and scrambled it to make a type specimenbook. It has survived not only.',
              style: TextStyle(
                color: kPrimaryColor.withOpacity(0.6),
                fontSize: 12,
                fontFamily: mainFont,

              ),

            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15,horizontal: 20),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: kSecondaryliteColor,
                    border: Border.all(color: kPrimaryColor,width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: SizeConfig.screenWidth*0.4,
                  child: FlatButton(
                    onPressed: (){},
                    child: Text(
                      "Add to faviorates",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 13,
                          fontFamily: mainFont
                      ),
                    ),


                  ),
                ),
                Container(
                  width: SizeConfig.screenWidth*0.4,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,

                    boxShadow:  [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: FlatButton(
                    onPressed: (){},
                    child: Text(
                      "Book",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: mainFont
                      ),
                    ),


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
