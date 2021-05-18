
import 'package:flutter/material.dart';

import 'package:gp/categorieslistdata.dart';

import '../../../Size_Config.dart';
import 'CardItem.dart';
import 'CategoriesListWidget.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override


  build(BuildContext context) {

    return Column(

      children: [
        // SizedBox(height: 2,),
        // Container(
        //     margin: EdgeInsets.symmetric(horizontal: 20),
        //     height: getProptionateScreenHeight(102 ),
        //     child: CategoriesWidget()
        // ),
        // SizedBox(height: 10,),
        Expanded(

          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TabBarView(
              children: [
                CategoriesWidget("Explore"),
                CategoriesWidget("Recommended"),
                CategoriesWidget("Saved"),

              ],
            ),
          ),
        ),
      ],
    );
  }
}
