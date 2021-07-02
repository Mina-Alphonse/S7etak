import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:gp/GlobalComponents/copyRight.dart';
import 'package:gp/GlobalComponents/logoandslogen.dart';
import 'package:gp/stakeholdersClases/Patients.dart';

import '../../Size_Config.dart';
import '../../auth.dart';
import '../../constraints.dart';
import 'Components/GenderTextForm.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String Email = 'Email',
      Password = 'Password',
      password,
      email,
      FullName = 'Full Name',
      fullName;
  String confirmPassword,
      ConfirmPassword = "Re-type your password",
      id,
      ID = "ID";
  String age, Age = 'Age', Phone = 'Phone', phone, gender, Gender = 'Gender';

  TextEditingController phoneController;

  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                LogoandSlogenWidget(),
                SizedBox(
                  height: getProptionateScreenHeight(30.0),
                ),
                signUpBody(),
                CopyRightWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column signUpBody() {
    return Column(
      children: [
        Text(
          'Sign Up and Fill your info.',
          style: TextStyle(
            fontSize: getProptionateScreenWidth(22.0),
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
        SizedBox(
          height: getProptionateScreenHeight(20.0),
        ),
        socialMEdiaSignUp(),
        //email
        signUpForm(),
      ],
    );
  }

  Column signUpForm() {
    return Column(
      children: [
        emailTextForm(),
        SizedBox(
          height: getProptionateScreenHeight(5.0),
        ),
        //start user
        fullNameTextForm(),
        //end user
        SizedBox(
          height: getProptionateScreenHeight(5.0),
        ),
        iDTextForm(),
        SizedBox(
          height: getProptionateScreenHeight(5.0),
        ),
        ageTextForm(),
        SizedBox(
          height: getProptionateScreenHeight(20.0),
        ),

        GenderFormWidget(),

        phoneNumberTextForm(),
        SizedBox(
          height: getProptionateScreenHeight(5.0),
        ),
        passwordTextForm(),
        SizedBox(
          height: getProptionateScreenHeight(5.0),
        ),
        retypePasswordTextForm(),
        SizedBox(
          height: getProptionateScreenHeight(35.0),
        ),
        registerButton(),
        SizedBox(
          height: getProptionateScreenHeight(15.0),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, '/SignIn');
          },
          child: Text(
            'Login as Client',
            style: TextStyle(
              color: kSecondaryColor,
            ),
          ),
        ),
        SizedBox(
          height: getProptionateScreenHeight(45.0),
        ),
      ],
    );
  }

  Container phoneNumberTextForm() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(40)),
      height: getProptionateScreenHeight(50.0),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        controller: phoneController,
        // onSaved: (newValue) => phone = newValue,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(kPhoneNumberNullError)) {
            setState(() {
              errors.remove(kPhoneNumberNullError);
            });
          }
          phone = value;
        },
        validator: (value) {
          if (value.isEmpty && !errors.contains(kPhoneNumberNullError)) {
            setState(() {
              errors.add(kPhoneNumberNullError);
            });
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          hintText: Phone,
          suffixIcon: Icon(
            Icons.phone,
            size: getProptionateScreenWidth(20),
          ),
          hintStyle: TextStyle(
              color: kSecondaryColor, fontSize: getProptionateScreenWidth(15)),
        ),
      ),
    );
  }

  Container ageTextForm() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(40)),
      height: getProptionateScreenHeight(50.0),
      child: TextFormField(
        keyboardType: TextInputType.number,
        // onSaved: (newValue) => age = newValue,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(kAgeNullError)) {
            setState(() {
              errors.remove(kAgeNullError);
            });
          }
          age = value;
        },
        validator: (value) {
          if (value.isEmpty && !errors.contains(kAgeNullError)) {
            setState(() {
              errors.add(kAgeNullError);
            });
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          hintText: Age,
          suffixIcon: Icon(
            Icons.calendar_today,
            size: getProptionateScreenWidth(20),
          ),
          hintStyle: TextStyle(
              color: kSecondaryColor, fontSize: getProptionateScreenWidth(15)),
        ),
      ),
    );
  }

  Container iDTextForm() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(40)),
      height: getProptionateScreenHeight(50.0),
      child: TextFormField(
        keyboardType: TextInputType.number,
        // onSaved: (newValue) => id = newValue,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(kIDNullError)) {
            setState(() {
              errors.remove(kIDNullError);
            });
          }
          id = value;
        },
        validator: (value) {
          if (value.isEmpty && !errors.contains(kIDNullError)) {
            setState(() {
              errors.add(kIDNullError);
            });
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          hintText: ID,
          suffixIcon: Icon(
            Icons.card_membership_outlined,
            size: getProptionateScreenWidth(20),
          ),
          hintStyle: TextStyle(
              color: kSecondaryColor, fontSize: getProptionateScreenWidth(15)),
        ),
      ),
    );
  }

  Container retypePasswordTextForm() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(40)),
      height: getProptionateScreenHeight(50.0),
      child: TextFormField(
        obscureText: true,
        // onSaved: (newValue) => confirmPassword = newValue,
        onChanged: (value) {
          if (password == confirmPassword && errors.contains(kPassNullError)) {
            setState(() {
              errors.remove(kMatchPassError);
            });
          }
          confirmPassword = value;
          return null;
        },
        validator: (value) {
          if (value.isEmpty && !errors.contains(kPassNullError)) {
            return "";
          } else if (password != value) {
            setState(() {
              errors.add(kMatchPassError);
            });
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          hintText: ConfirmPassword,
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

  Container fullNameTextForm() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(40)),
      height: getProptionateScreenHeight(50.0),
      child: TextFormField(
        keyboardType: TextInputType.name,
        // onSaved: (newValue) => fullName = newValue,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(kNamelNullError)) {
            setState(() {
              errors.remove(kNamelNullError);
            });
          }
          fullName = value;
        },
        validator: (value) {
          if (value.isEmpty && !errors.contains(kEmailNullError)) {
            setState(() {
              errors.add(kNamelNullError);
            });
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          hintText: FullName,
          suffixIcon: Icon(
            Icons.perm_identity,
            size: getProptionateScreenWidth(20),
          ),
          hintStyle: TextStyle(
              color: kSecondaryColor, fontSize: getProptionateScreenWidth(15)),
        ),
      ),
    );
  }

  Container registerButton() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(10)),
      width: getProptionateScreenWidth(302),
      height: getProptionateScreenHeight(58),
      child: ElevatedButton(
        onPressed: () async {
          print(email);
          print(age);
          print(fullName);
          print(id);
          print(gender);
          print(phone);
          print(password);
          print(confirmPassword);
          try {
            Patients patientData = Patients(
              mail: email,
              age: age,
              name: fullName,
              insuranceId: id,
              gender: "male",
              phone: phone,
            );
            var result = await AuthService()
                .registerWithMailAndPassword(password, patientData);
            if (result != null) print("successful sign up");
          } catch (error) {
            print(error);
          }
        },
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          //minimumSize: Size(40,30),
        ),
        child: Text(
          'Register',
          style: TextStyle(
            fontSize: getProptionateScreenWidth(18.0),
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Container passwordTextForm() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(40)),
      height: getProptionateScreenHeight(50.0),
      child: TextFormField(
        obscureText: true,
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
          hintText: Password,
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
          hintText: Email,
          suffixIcon: Icon(
            Icons.email,
            size: getProptionateScreenWidth(20),
          ),
          hintStyle: TextStyle(
              color: kSecondaryColor, fontSize: getProptionateScreenWidth(15)),
        ),
      ),
    );
  }

  Column socialMEdiaSignUp() {
    return Column(
      children: [
        Container(
          margin:
              EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(10)),
          width: getProptionateScreenWidth(302),
          height: getProptionateScreenHeight(48),
          child: ElevatedButton(
            onPressed: () {
              // Respond to button press
            },
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              //minimumSize: Size(40,30),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: getProptionateScreenWidth(20),
                ),
                Image(
                  image: AssetImage('assets/gooogle.png'),
                  height: getProptionateScreenHeight(37.0),
                  width: getProptionateScreenHeight(37.0),
                ),
                SizedBox(
                  width: getProptionateScreenWidth(40),
                ),
                Text(
                  'Sign Up with Google',
                  style: TextStyle(
                    fontSize: getProptionateScreenWidth(18.0),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: getProptionateScreenHeight(10.0),
        ),
        Container(
          margin:
              EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(10)),
          width: getProptionateScreenWidth(302),
          height: getProptionateScreenHeight(48),
          child: ElevatedButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              //minimumSize: Size(40,30),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: getProptionateScreenWidth(20),
                ),
                Image(
                  image: AssetImage('assets/facebook.png'),
                  height: getProptionateScreenHeight(37.0),
                  width: getProptionateScreenHeight(25.0),
                ),
                SizedBox(
                  width: getProptionateScreenWidth(40),
                ),
                Text(
                  'Sign Up with Facebook',
                  style: TextStyle(
                    fontSize: getProptionateScreenWidth(18.0),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: getProptionateScreenHeight(20.0),
        ),
        Container(
          margin:
              EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(10)),
          child: Row(
            children: [
              SizedBox(
                width: getProptionateScreenWidth(32.0),
              ),
              Container(
                width: getProptionateScreenWidth(128),
                height: 1.0,
                color: Colors.grey,
              ),
              SizedBox(
                width: getProptionateScreenWidth(10.0),
              ),
              Text(
                'Or',
                style: TextStyle(
                  fontSize: getProptionateScreenWidth(15),
                ),
              ),
              SizedBox(
                width: getProptionateScreenWidth(10.0),
              ),
              Container(
                width: getProptionateScreenWidth(128),
                height: 1.0,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        SizedBox(
          height: getProptionateScreenHeight(20.0),
        ),
      ],
    );
  }
}
