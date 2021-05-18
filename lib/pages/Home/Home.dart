import 'package:flutter/material.dart';
import 'package:gp/pages/Home/Components/Body.dart';

import '../../Size_Config.dart';
import '../../constraints.dart';
import '../../GlobalComponents/searchBarWidget.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: SafeArea(

          child: SingleChildScrollView(
              child: Body()
          ),
        )
    );
  }
}
