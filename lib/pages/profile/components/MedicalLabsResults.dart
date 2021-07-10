import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp/GlobalComponents/LabResultsCard.dart';
import 'package:gp/constraints.dart';
import 'package:gp/stakeholdersClases/labResults.dart';


class MedicalLabsResults extends StatelessWidget {
  final List<LabResults> labResults;

  MedicalLabsResults({this.labResults});

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
          'Medical Lab and Radiology Results',
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
                    itemCount: labResults.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return LabResultsCard(
                        name: labResults[index].name,
                        url: labResults[index].url,
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
