import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gp/stakeholdersClases/Doctors.dart';

import '../../../Size_Config.dart';
import '../../../constraints.dart';
import 'CardItem.dart';

class DoctorsCards extends StatefulWidget {
  final List<Doctors> doctorsList;
  const DoctorsCards({Key key, this.doctorsList}) : super(key: key);

  @override
  _DoctorsCardsState createState() => _DoctorsCardsState();
}

class _DoctorsCardsState extends State<DoctorsCards> {

  Icon savedIcon = Icon(Icons.bookmark_border);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 5.0,

      title: Text(
        "Doctors",
        style: TextStyle(
          fontFamily: mainFont,
          fontSize: getProptionateScreenWidth(30),
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      backgroundColor: kPrimaryColor,
      // kSecondaryliteColor.withOpacity(0.6),
      //toolbarHeight: getProptionateScreenHeight(60),

      actions: [
        GestureDetector(
          child: Icon(
            Icons.person,
            size: 30,
          ),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/Profile',
            );
          },
        ),
        SizedBox(
          width: SizeConfig.screenWidth * 0.05,
        )
      ],),
      body: ListView.builder(
        itemCount: widget.doctorsList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //image
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Container(
                      height: getProptionateScreenHeight(125),
                      width: getProptionateScreenWidth(122),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ClipOval(
                          child: Image.asset(
                            doctorList[0].imgURL,
                          ),
                        ),
                      ),
                    ),
                  ),

                  //Hospital Name
                  Container(
                    padding: EdgeInsets.all(4),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //1Name
                            Container(
                              width: getProptionateScreenWidth(150),
                              child: Text(
                                widget.doctorsList[index].name,
                                style: TextStyle(
                                    fontSize: getProptionateScreenWidth(15),
                                    fontWeight: FontWeight.bold,
                                    color: kSecondaryColor,
                                    fontFamily: mainFont),
                              ),
                            ),
                            IconButton(
                                iconSize: 30,
                                icon: savedIcon,
                                onPressed: () {
                                  if (doctorList[index].isSaved == true) {
                                    setState(() {
                                      savedIcon = Icon(Icons.bookmark);
                                      doctorList[index].isSaved = false;
                                    });
                                  } else {
                                    setState(() {
                                      savedIcon = Icon(Icons.bookmark_border);
                                      doctorList[index].isSaved = true;
                                    });
                                  }
                                })
                          ],
                        ),

                        //Hospital address and phone Number
                        Padding(
                          padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          child: Container(
                            // width: getProptionateScreenWidth(200),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.doctorsList[index].specialty ?? "" ,
                                  style: TextStyle(
                                      fontSize: getProptionateScreenWidth(11),
                                      color: kPrimaryColor.withOpacity(0.8),
                                      fontFamily: mainFont),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  widget.doctorsList[index].title ?? "" ,
                                  style: TextStyle(
                                      fontSize: getProptionateScreenWidth(11),
                                      color: kPrimaryColor.withOpacity(0.8),
                                      fontFamily: mainFont),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  widget.doctorsList[index].phone ?? "",
                                  style: TextStyle(
                                      fontSize: getProptionateScreenWidth(11),
                                      color: kPrimaryColor.withOpacity(0.8),
                                      fontFamily: mainFont),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  widget.doctorsList[index].dates ?? "" ,
                                  style: TextStyle(
                                      fontSize: getProptionateScreenWidth(11),
                                      color: kPrimaryColor.withOpacity(0.8),
                                      fontFamily: mainFont),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  width:100,
                                  child: FlutterRatingBar(

                                    itemSize: 20,
                                    initialRating: 3,
                                    fillColor: Colors.amber,
                                    borderColor: Colors.amber.withAlpha(250),
                                    allowHalfRating: true,
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ),
                                SizedBox(width: 5,),
                                  Padding(
                                  padding: EdgeInsets.only(top: 5, bottom: 5),
                                  child: RaisedButton(
                                    padding: EdgeInsets.only(top: 5,bottom: 5, right: 10,left: 10),
                                    elevation: 3,
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/cardDetails');
                                    },
                                    child: Text(
                                      "Call to make an Appointment",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: kliteColor,
                                          fontSize: getProptionateScreenWidth(14),
                                          fontWeight: FontWeight.bold,
                                          fontFamily: mainFont),
                                    ),
                                    color: kPrimaryColor,
                                  ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
