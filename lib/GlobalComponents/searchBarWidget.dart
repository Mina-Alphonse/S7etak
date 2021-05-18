
import 'package:flutter/material.dart';

import '../Size_Config.dart';
import '../constraints.dart';

class SearchbarWidget extends StatefulWidget {
  final Color color;

  const SearchbarWidget({
    Key key, this.color,
  }) : super(key: key);

  @override
  _SearchbarWidgetState createState() => _SearchbarWidgetState();
}

class _SearchbarWidgetState extends State<SearchbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: getProptionateScreenHeight(60.0),

      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(15),

      ),
      child: TextField(
        onChanged: (value){

        },
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: "Search for your service",
          prefixIcon: Icon(Icons.search),
          suffixIcon: GestureDetector(
              onTap: (){
                //filteration in search
              },
              child: Icon(Icons.settings_input_component)),
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProptionateScreenWidth(10),
            vertical: getProptionateScreenWidth(9),
          ),


        ),
      ),

    );
  }
}
