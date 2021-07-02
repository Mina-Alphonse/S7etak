import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../Size_Config.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return  Shimmer.fromColors(
      baseColor: Colors.blue[900],
      highlightColor: Colors.grey[200],
      child:Center(child: Column(
        children: [
          SizedBox(
            height: getProptionateScreenHeight(130.0),
          ),
          Image(
            image:AssetImage('assets/logo.png'),
            height:getProptionateScreenWidth(256.0),
            width: getProptionateScreenWidth(256.0),
          ),
          SizedBox(
            height: getProptionateScreenHeight(66.0),
          ),

          Image(
            image:AssetImage('assets/slogen.png'),
            height:getProptionateScreenWidth(107),
            width: getProptionateScreenWidth(197.0),
          ),
        ],
      )),
    );
  }
}
