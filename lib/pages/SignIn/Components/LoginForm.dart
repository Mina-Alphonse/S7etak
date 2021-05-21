// import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gp/auth.dart';
import 'package:gp/database.dart';

import '../../../Size_Config.dart';
import '../../../constraints.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({
    Key key,
  }) : super(key: key);

  @override
  _LoginFormWidgetState createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  TextEditingController emailController;
  TextEditingController passwordController;

  final _formKey = GlobalKey<FormState>();
  String password, email;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          emailTextForm(),
          SizedBox(
            height: getProptionateScreenHeight(5.0),
          ),
          passwordTextForm(),
          SizedBox(
            height: getProptionateScreenHeight(35.0),
          ),
          loginButton(context),
          SizedBox(
            height: getProptionateScreenHeight(15.0),
          ),
          toRegisterDetector(),
          SizedBox(
            height: getProptionateScreenHeight(45.0),
          ),
        ],
      ),
    );
  }

  Container passwordTextForm() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(40)),
      height: getProptionateScreenHeight(50.0),
      child: TextFormField(
        obscureText: true,
        controller: passwordController,
        // onSaved: (newValue) => password = newValue,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(kPassNullError)) {
            setState(() {
              errors.remove(kPassNullError);
            });
          } else if (value.length >= 8 && errors.contains(kShortPassError)) {
            setState(() {
              errors.remove(kShortPassError);
            });
          }
          password = value;
          return null;
        },
        validator: (value) {
          if (value.isEmpty && !errors.contains(kPassNullError)) {
            setState(() {
              errors.add(kPassNullError);
            });
            return "";
          } else if (value.length < 8 && !errors.contains(kShortPassError)) {
            setState(() {
              errors.add(kShortPassError);
            });
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          hintText: 'Password',
          suffixIcon: Icon(
            Icons.security,
            size: getProptionateScreenWidth(20),
          ),
          hintStyle: TextStyle(
              color: kSecondaryColor, fontSize: getProptionateScreenWidth(15)),
        ),
      ),
    );
  }

  Container emailTextForm() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(40)),
      height: getProptionateScreenHeight(50.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        controller: emailController,
        // onSaved: (newValue) => email = newValue,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(kEmailNullError)) {
            setState(() {
              errors.remove(kEmailNullError);
            });
          } else if (emailValidatorRegExp.hasMatch(value) &&
              errors.contains(kInvalidEmailError)) {
            setState(() {
              errors.remove(kInvalidEmailError);
            });
          }
          email = value;
        },
        validator: (value) {
          if (value.isEmpty && !errors.contains(kEmailNullError)) {
            setState(() {
              errors.add(kEmailNullError);
            });
            return "";
          } else if (!emailValidatorRegExp.hasMatch(value) &&
              !errors.contains(kInvalidEmailError)) {
            setState(() {
              errors.add(kInvalidEmailError);
            });
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          hintText: 'Username or Email',
          suffixIcon: Icon(
            Icons.person,
            size: getProptionateScreenWidth(20),
          ),
          hintStyle: TextStyle(
              color: kSecondaryColor, fontSize: getProptionateScreenWidth(15)),
        ),
      ),
    );
  }

  GestureDetector toRegisterDetector() {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, '/SignUp');
      },
      child: Text(
        'Register as Client',
        style: TextStyle(
          color: kSecondaryColor,
        ),
      ),
    );
  }

  Container loginButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(10)),
      width: getProptionateScreenWidth(302),
      height: getProptionateScreenHeight(58),
      child: ElevatedButton(
        onPressed: () async {
          try {
            // String tempEmail = "fonsi@gmail.com";
            // String tempPassword = "123456";
            // print(email);
            // print(password);
            //
            // FirebaseUser result =
            //     await AuthService().signInWithMailAndPassword(email.trim(), password.trim());
            // if (result != null){
            //   //Grab user Data
            //   String userID = result.uid;
            //   print(userID);
              // DatabaseService(uid: userID).infoCollection.document(userID).get();
              Navigator.pushReplacementNamed(context, '/Home');//}
          } catch (error) {
            print(error);
          }
        },
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          //minimumSize: Size(40,30),
        ),
        child: Text(
          'Continue',
          style: TextStyle(
            fontSize: getProptionateScreenWidth(18.0),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
