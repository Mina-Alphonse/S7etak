import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:gp/constraints.dart';

import '../../../Size_Config.dart';

class BlankPdf extends StatelessWidget {
  final String url;

  BlankPdf({this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: kPrimaryColor,
          ),
        ),
        backgroundColor: kliteColor,
        centerTitle: true,
        title: Text(
          'PDF',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontFamily: mainFont,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            //color: kliteColor,

            border: Border.all(color: kPrimaryColor, width: 1.0),
            borderRadius: BorderRadius.circular(5),
          ),
          child: PDF(
            swipeHorizontal: true,
          ).cachedFromUrl(url),
        ),
      ),
    );
  }
}
