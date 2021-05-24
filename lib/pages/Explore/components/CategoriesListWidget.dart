import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:gp/Size_Config.dart';

import 'package:gp/constraints.dart';
import 'package:gp/pages/Explore/components/CardItem.dart';

import '../../../categorieslistdata.dart';

class CategoriesWidget extends StatefulWidget {
  final String header;

  CategoriesWidget(
    this.header,
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
      length: 6,

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
                  text: categoriesdata[0].name,


                ),
                Tab(
                  text: categoriesdata[1].name,

                ),
                Tab(
                    text: categoriesdata[2].name,

                ),
                Tab(
                    text: categoriesdata[3].name
                    ,

                ),
                Tab(
                    text: categoriesdata[4].name,

                ),
                Tab(
                  text: categoriesdata[5].name,

                ),
              ],
            ),
          ),
          SizedBox(height: 5,),
          _renderWidget()
        ],
      ),
    );
  }

  Widget _renderWidget() {
    if (index == 0)
      return Expanded(
        child: TabBarView(
          children: <Widget>[
            allListBuilder(),
            allListBuilder(),
            allListBuilder(),
            allListBuilder(),
            allListBuilder(),
            allListBuilder(),
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

class allListBuilder extends StatefulWidget {
  const allListBuilder({
    Key key,
  }) : super(key: key);

  @override
  _allListBuilderState createState() => _allListBuilderState();
}

class _allListBuilderState extends State<allListBuilder> {
  @override
  Icon savedIcon = Icon(Icons.bookmark_border);

  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: doctorList.length,
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
                          doctorList[index].imgURL,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  //decription
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
                                doctorList[index].name,
                                style: TextStyle(
                                    fontSize: getProptionateScreenWidth(15),
                                    fontWeight: FontWeight.bold,
                                    color: kSecondaryColor,
                                    fontFamily: mainFont),
                              ),
                            ),
                            //SizedBox(width: getProptionateScreenWidth(17),),
                            //icon
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
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          child: Container(
                            width: getProptionateScreenWidth(200),
                            child: Text(
                              doctorList[index].shortDesc,
                              style: TextStyle(
                                  fontSize: getProptionateScreenWidth(11),
                                  color: kPrimaryColor.withOpacity(0.8),
                                  fontFamily: mainFont),
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
                                    Navigator.pushNamed(context, '/cardDetails');
                                  },
                                  child: Text(
                                    "Book",
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
