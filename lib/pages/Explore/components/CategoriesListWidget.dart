import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:gp/Size_Config.dart';

import 'package:gp/constraints.dart';
import 'package:gp/pages/Explore/components/CardItem.dart';
import 'package:gp/pages/Explore/components/DoctorsCards.dart';
import 'package:gp/stakeholdersClases/Doctors.dart';
import 'package:gp/stakeholdersClases/Hospitals.dart';
import 'package:gp/stakeholdersClases/InsuranceCompany.dart';
import 'package:gp/stakeholdersClases/Labs.dart';
import 'package:gp/stakeholdersClases/Pharmacies.dart';

import '../../../categorieslistdata.dart';

class CategoriesWidget extends StatefulWidget {
  final String header;
  final InsuranceCompany insuranceCompany;
  final List<Hospitals> hospitalsList;
  final List<Lab> labsList;
  final List<Pharmacies> pharmaciesList;
  final List<Doctors> doctorsList;

  CategoriesWidget(
    this.header,this.insuranceCompany,this.hospitalsList,this.pharmaciesList,this.labsList,this.doctorsList
  );

  @override
  _CategoriesWidgetState createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  @override
  void initState() {
    super.initState();
  }

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: ButtonsTabBar(

              backgroundColor: kPrimaryColor,
              unselectedBackgroundColor: kliteColor,
              unselectedLabelStyle: TextStyle(
                  color: kPrimaryColor,
                fontFamily: mainFont,
              ),
             // borderWidth: 1,
              //unselectedBorderColor: kPrimaryColor,
              labelStyle:TextStyle(
                fontFamily: mainFont,
                  fontSize: 15,

                  color: Colors.white,
                  fontWeight: FontWeight.bold

              ),
              radius: 10,
              //height: 50,
              contentPadding: EdgeInsets.symmetric(horizontal: 8),

              tabs: [
                Tab(
                  text: categoriesData[0].name,
                  // child: Container(),
                ),
                Tab(
                  text: categoriesData[1].name,

                ),
                Tab(
                    text: categoriesData[2].name,

                ),
                Tab(
                    text: categoriesData[3].name
                    ,

                ),
                Tab(
                    text: categoriesData[4].name,

                ),
                Tab(
                  text: categoriesData[5].name,

                ),
              ],
            ),
          ),
          SizedBox(height: 5,),
          _renderWidget(widget.insuranceCompany,widget.hospitalsList,widget.labsList,widget.pharmaciesList,widget.doctorsList)
        ],
      ),
    );
  }

  Widget _renderWidget(InsuranceCompany insuranceCompany,
  List<Hospitals> hospitalsList, List<Lab> labsList, List<Pharmacies> pharmaciesList,List<Doctors> doctorsList) {
    if (index == 0)
      return Expanded(
        child: TabBarView(
          children: <Widget>[
            AllListBuilder(hospitalsList: hospitalsList,insuranceCompany: insuranceCompany,labsList: labsList,pharmaciesList: pharmaciesList,doctorsList: doctorsList,),
            AllListBuilder(hospitalsList: hospitalsList,insuranceCompany: insuranceCompany,labsList: labsList,pharmaciesList: pharmaciesList,doctorsList: doctorsList,),
            // allListBuilder(),
            // allListBuilder(),
            // allListBuilder(),
            // allListBuilder(),
          ],
        ),
      );
    else
      return Container(
        child: Center(
          child: Text("Index $index"),
        ),
      );
  }
}

class AllListBuilder extends StatefulWidget {
  final InsuranceCompany insuranceCompany;
  final List<Hospitals> hospitalsList;
  final List<Lab> labsList;
  final List<Pharmacies> pharmaciesList;
  final List<Doctors> doctorsList;
  const AllListBuilder({
    Key key,this.insuranceCompany,this.hospitalsList,this.labsList,this.pharmaciesList,this.doctorsList
  }) : super(key: key);

  @override
  _AllListBuilderState createState() => _AllListBuilderState();
}

class _AllListBuilderState extends State<AllListBuilder> {

  Icon savedIcon = Icon(Icons.bookmark_border);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: widget.hospitalsList.length,
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              child: Row(
                children: [
                  //image
                  Container(
                    height: getProptionateScreenHeight(125),
                    width: getProptionateScreenWidth(122),
                    decoration: BoxDecoration(
                      color: kliteColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: FittedBox(
                        child: Image.asset(
                          doctorList[0].imgURL,
                          fit: BoxFit.fill,
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
                              widget.hospitalsList[index].hospitalName,
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
                            width: getProptionateScreenWidth(200),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.hospitalsList[index].address,
                                  style: TextStyle(
                                      fontSize: getProptionateScreenWidth(11),
                                      color: kPrimaryColor.withOpacity(0.8),
                                      fontFamily: mainFont),
                                ),
                                SizedBox(height: 15,),
                                Text(
                                  widget.hospitalsList[index].phone,
                                  style: TextStyle(
                                      fontSize: getProptionateScreenWidth(11),
                                      color: kPrimaryColor.withOpacity(0.8),
                                      fontFamily: mainFont),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
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
                                  elevation: 3,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => DoctorsCards(doctorsList:
                                        widget.hospitalsList[index].doctors,)),
                                    );
                                    },
                                  child: Text(
                                    "Explore",
                                    style: TextStyle(
                                        color: kliteColor,
                                        fontSize: getProptionateScreenWidth(14),
                                        fontWeight: FontWeight.bold,
                                        fontFamily: mainFont),
                                  ),
                                  color: kPrimaryColor,
                                )),
                          ],
                        )
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
