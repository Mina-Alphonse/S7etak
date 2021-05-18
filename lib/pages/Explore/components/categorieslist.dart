
import 'package:flutter/material.dart';
import 'package:gp/pages/Explore/components/CategoriesButton.dart';

import '../../../Size_Config.dart';
import '../../../constraints.dart';

class CategoriesBar extends StatefulWidget {
  const CategoriesBar({
    Key key,
  }) : super(key: key);

  @override
  _CategoriesBarState createState() => _CategoriesBarState();
}

class _CategoriesBarState extends State<CategoriesBar> {

  @override

  Widget build(BuildContext context) {

    return ListView(

      scrollDirection: Axis.horizontal,

      children: [
        CategoriesButtonWidget(text: 'Doctors',),
        CategoriesButtonWidget(text: 'Medical labs',),
        CategoriesButtonWidget(text:'Radiology labs',),
        CategoriesButtonWidget(text: 'Hospitals',),
        CategoriesButtonWidget(text: 'Pharmacies',),
      ],

    );
  }
}




