import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp/constraints.dart';
import 'package:gp/pages/profile/components/ChronicDiseaseCard.dart';

import '../../../stakeholdersClases/Patients.dart';

class ChronicDiseases extends StatelessWidget {
  final Patients patients;

  ChronicDiseases({this.patients});

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
          'Chronic Diseases',
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
                    itemCount: patients.chronicDisease.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(10),
                        child: ChronicDiseaseCard(
                          name: patients.chronicDisease[index],
                        ),
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
