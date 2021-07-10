import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp/constraints.dart';
import 'package:gp/pages/profile/components/PreviousHistoryCard.dart';

import '../../../stakeholdersClases/Patients.dart';

class PreviousMedicalDiagnoses extends StatelessWidget {
  final Patients patient;

  PreviousMedicalDiagnoses({this.patient});

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
          'Medical Diagnoses',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontFamily: mainFont,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 12,
              ),
              Container(
                child: ListView.builder(
                    itemCount: patient.diagnoses.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return PreviousHistoryCard(
                        name: patient.diagnoses[index],
                        // date: 'April 01, 2021',
                        // title2: 'department name',
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
