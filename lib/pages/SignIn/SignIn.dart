import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:gp/pages/SignIn/Components/Body.dart';





import '../../Size_Config.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(

          child: Center(
              child: Body()
          ),
        ),
      ),
    );
  }

}
