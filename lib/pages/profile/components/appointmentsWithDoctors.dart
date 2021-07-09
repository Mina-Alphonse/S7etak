import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp/constraints.dart';

import 'AppointmentsCard.dart';


class AppointmentsDoctors extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading:  GestureDetector(
          onTap: (){
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
          'Appointments',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontFamily: mainFont,

          ),
        ),
      ),
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 12,),
              Container(
                child:  ListView.builder(
                    itemCount: 1,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return AppointmentsCard(
                        fullDate: 'April 01, 2021 18:55',
                        name: 'Dr. Youssef El-Shimy',
                        title: 'Consaltant of Dermatology and Andrology',
                        titleDate: 'April , 2021',
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
