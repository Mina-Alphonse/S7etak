
import 'package:flutter/material.dart';

import '../../../Size_Config.dart';
import '../../../constraints.dart';

class CategoriesButtonWidget extends StatefulWidget {
  const CategoriesButtonWidget({
    Key key, this.text,
  }) : super(key: key);
  final String text;

  @override
  _CategoriesButtonWidgetState createState() => _CategoriesButtonWidgetState();
}

class _CategoriesButtonWidgetState extends State<CategoriesButtonWidget> {

  Color textColor = kPrimaryColor, backColor = kliteColor;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){
        setState(() {
          textColor=Colors.white;
          backColor=kPrimaryColor;
        });
      },

      child: Container(

        margin: EdgeInsets.only(right: getProptionateScreenWidth(5)),
        padding: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(10)),
        height:getProptionateScreenHeight(30) ,
        //width: getProptionateScreenWidth(115),
        decoration: new BoxDecoration(
          color: backColor,
          borderRadius:BorderRadius.circular(10),
          border: Border.all(width: 1.0, color:textColor),

        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
                color:textColor,
                fontSize: getProptionateScreenWidth(14),
                fontWeight: FontWeight.bold,
                fontFamily: mainFont
            ),
          ),
        ),
      ),
    );
  }
}
