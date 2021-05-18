

// import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:customtogglebuttons/customtogglebuttons.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gp/GlobalComponents/BookButton.dart';
import 'package:gp/Size_Config.dart';

import 'package:gp/constraints.dart';
import 'package:gp/pages/Explore/components/CardItem.dart';
import 'package:gp/pages/Explore/components/CategoriesButton.dart';

import 'package:toggle_bar/toggle_bar.dart';

import '../../../categorieslistdata.dart';


class CategoriesWidget extends StatefulWidget {
  final String header;

  CategoriesWidget(this.header,) ;

  @override
  _CategoriesWidgetState createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
   @override


    void initState() {


      super.initState();
    }


  @override
  Widget build(BuildContext context) {

    return  DefaultTabController(

        length: 6,
        child: Column(
          children: <Widget>[
            // ButtonsTabBar(
            //
            //   backgroundColor: kPrimaryColor,
            //   unselectedBackgroundColor: kliteColor,
            //   unselectedLabelStyle: TextStyle(
            //       color: kPrimaryColor,
            //     fontFamily: mainFont,
            //   ),
            //   borderWidth: 1,
            //   unselectedBorderColor: kPrimaryColor,
            //   labelStyle:TextStyle(
            //     fontFamily: mainFont,
            //       fontSize: 15,
            //
            //       color: Colors.white,
            //       fontWeight: FontWeight.bold
            //
            //   ),
            //   radius: 10,
            //   height: 50,
            //   contentPadding: EdgeInsets.symmetric(horizontal: 8),
            //
            //   tabs: [
            //     Tab(
            //       text: categoriesdata[0].name,
            //         // child: GestureDetector(
            //         //     child: Text(categoriesdata[0].name,),
            //         //     onTap:(){
            //         //       setState(() {
            //         //
            //         //         modelCategory.change(categoriesdata[0].id);
            //         //
            //         //         print(Model.SelectedCategory);
            //         //       });
            //         //     }
            //         // )
            //     ),
            //     Tab(
            //       text: categoriesdata[1].name,
            //         // child: GestureDetector(
            //         //   child: Text(categoriesdata[1].name,),
            //         // onTap:(){
            //         //   setState(() {
            //         //     modelCategory.change(categoriesdata[1].id);
            //         //
            //         //     print(Model.SelectedCategory);
            //         //   });
            //         // }
            //         // )
            //     ),
            //     Tab(
            //         text: categoriesdata[2].name,
            //         // child: GestureDetector(
            //         //     onTap:(){
            //         //       setState(() {
            //         //         SelectedCategory= categoriesdata[2].id;
            //         //       });
            //         //     }
            //         // )
            //     ),
            //     Tab(
            //         text: categoriesdata[3].name
            //         ,
            //         // child: GestureDetector(
            //         //     onTap:(){
            //         //       setState(() {
            //         //         SelectedCategory= categoriesdata[3].id;
            //         //       });
            //         //     }
            //         // )
            //     ),
            //     Tab(
            //         text: categoriesdata[4].name,
            //         // child: GestureDetector(
            //         //     onTap:(){
            //         //       setState(() {
            //         //         SelectedCategory= categoriesdata[4].id;
            //         //       });
            //         //     }
            //         // )
            //     ),
            //     Tab(
            //       text: categoriesdata[5].name,
            //         // child: GestureDetector(
            //         //     onTap:(){
            //         //       setState(() {
            //         //         SelectedCategory= categoriesdata[5].id;
            //         //       });
            //         //     }
            //         // )
            //     ),
            //   ],
            // ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  allListBuilder(),
                  allListBuilder(),
                  allListBuilder(),
                  allListBuilder(),
                  allListBuilder(),
                  allListBuilder(),


                ],
              ),)
          ],
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
  Icon savedIcon= Icon(Icons.bookmark_border);
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount:doctorList.length ,
        itemBuilder: (context,index){

          return Card(
            child: Container(
              child: Row(

                children: [
                  //image
                  Container(
                    height:getProptionateScreenHeight(125),
                    width:getProptionateScreenWidth(125) ,
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
                              width:getProptionateScreenWidth(150),
                              child: Text(
                                doctorList[index].name,
                                style: TextStyle(
                                    fontSize: getProptionateScreenWidth(15),
                                    fontWeight: FontWeight.bold,
                                    color: kSecondaryColor,
                                    fontFamily: mainFont
                                ),
                              ),
                            ),
                            //SizedBox(width: getProptionateScreenWidth(17),),
                            //icon
                            IconButton(
                                iconSize: 30,
                                icon:savedIcon,
                                onPressed: (){
                                  if(doctorList[index].isSaved==true){
                                    setState(() {
                                      savedIcon=Icon(Icons.bookmark);
                                      doctorList[index].isSaved=false;
                                    });
                                  }
                                  else{
                                    setState(() {
                                      savedIcon=Icon(Icons.bookmark_border);
                                      doctorList[index].isSaved=true;

                                    });
                                  }
                                }
                            )
                          ],
                        ),
                        Container(
                          width: getProptionateScreenWidth(200),
                          child: Text(
                            doctorList[index].shortDesc,
                            style: TextStyle(
                                fontSize: getProptionateScreenWidth(11),

                                color: kPrimaryColor.withOpacity(0.8),
                                fontFamily: mainFont
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
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
                            SizedBox(width: getProptionateScreenWidth(55),),
                            BookButton(text:'Book'),
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
