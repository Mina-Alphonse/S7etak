import 'package:flutter/material.dart';

import 'package:gp/Size_Config.dart';

import 'package:gp/constraints.dart';
import 'package:gp/pages/Explore/components/CardItem.dart';
import 'package:gp/stakeholdersClases/Labs.dart';
import 'package:provider/provider.dart';

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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              color: kliteColor,
              child: Row(
                children: [
                  FlatButton(
                      onPressed: () {
                        setState(() {
                          index = 0;

                        });
                      },

                      child: Text("All")),
                  FlatButton(
                      onPressed: () {
                        setState(() {
                          index = 1;
                        });
                      },
                      child: Text("Doctor")),
                  FlatButton(
                      onPressed: () {
                        setState(() {
                          index = 2;
                        });
                      },
                      child: Text("Medical labs")),
                  FlatButton(
                      onPressed: () {
                        setState(() {
                          index = 3;
                        });
                      },
                      child: Text("Radiology Labs")),
                ],
              ),
            ),
          ),
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

    List<Lab> labsLsit = Provider.of<List<Lab>>(context);

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

                  // Description
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
                                labsLsit[0].name,
                                style: TextStyle(
                                    fontSize: getProptionateScreenWidth(15),
                                    fontWeight: FontWeight.bold,
                                    color: kSecondaryColor,
                                    fontFamily: mainFont),
                              ),
                            ),
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
                            //1rate
                            // RatingBar.builder(
                            //   itemSize: 15,
                            //   initialRating: 4,
                            //   minRating: 1,
                            //   direction: Axis.horizontal,
                            //   allowHalfRating: true,
                            //   itemCount: 5,
                            //   itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                            //   itemBuilder: (context, _) => Icon(
                            //     Icons.star,
                            //     color: Colors.amber,
                            //   ),
                            //   onRatingUpdate: (rating) {
                            //     print(rating);
                            //   },
                            // ),
                            //2Button to book
                            // SizedBox(
                            //   width: getProptionateScreenWidth(55),
                            // ),
                            Padding(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child: RaisedButton(
                                  elevation: 3,
                                  onPressed: () {},
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
