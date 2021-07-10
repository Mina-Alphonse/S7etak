import 'package:flutter/material.dart';
import 'package:gp/GlobalComponents/BookButton.dart';
import 'package:gp/GlobalComponents/custom_horizontal_row.dart';
import 'package:gp/pages/profile/components/personalinforows.dart';

import '../../../Size_Config.dart';
import '../../../constraints.dart';
import '../../../stakeholdersClases/Patients.dart';

class PersonalInformationDetailsCardWidget extends StatefulWidget {
  Patients patient;

  PersonalInformationDetailsCardWidget({this.patient});

  @override
  _PersonalInformationDetailsCardWidgetState createState() =>
      _PersonalInformationDetailsCardWidgetState();
}

class _PersonalInformationDetailsCardWidgetState
    extends State<PersonalInformationDetailsCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      // height: getProptionateScreenHeight(150),

      child: Column(
        children: [
          //
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.patient.name,
                  style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: 20,
                      fontFamily: mainFont,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomHorizontalRow(
                  text: 'ID info',
                ),
                SizedBox(
                  height: 10,
                ),
                personalinforows(
                  text: widget.patient.phone,
                  text2: 'ID',
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.black.withOpacity(0.5),
                ),
                personalinforows(
                  text: widget.patient.name,
                  text2: 'User name',
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.black.withOpacity(0.5),
                ),
                personalinforows(
                  text: widget.patient.insuranceCompany,
                  text2: 'Ins. Com.',
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.black.withOpacity(0.5),
                ),
                personalinforows(
                  text: widget.patient.mail ?? "",
                  text2: 'Email',
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.black.withOpacity(0.5),
                ),
                personalinforows(
                  text: widget.patient.phone,
                  text2: 'Phone no.',
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.black.withOpacity(0.5),
                ),
                personalinforows(
                  text: widget.patient.age,
                  text2: 'Age',
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.black.withOpacity(0.5),
                ),
                personalinforows(
                  text: widget.patient.gender ?? "",
                  text2: 'Gender',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomHorizontalRow(
                  text: 'Medical info',
                ),
                SizedBox(
                  height: 10,
                ),
                // personalinforows(
                //   text: widget.patient.,
                //   text2: 'blood pressure rate',
                // ),
                // Divider(
                //   thickness: 0.5,
                //   color: Colors.black.withOpacity(0.5),
                // ),
                ListView.builder(
                    itemCount: widget.patient.chronicDisease.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return personalinforows(
                        text: widget.patient.chronicDisease[index],
                        text2: "Disease",
                      );
                    })
                // personalinforows(
                //   text: 'No',
                //   text2: 'Diabetic',
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
