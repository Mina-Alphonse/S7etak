import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp/constraints.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constraints.dart';
import '../../../stakeholdersClases/Labs.dart';
import 'AppointmentsCard.dart';

class AppointmentsLabsFinal extends StatelessWidget {
  final List<Lab> labs;

  AppointmentsLabsFinal({this.labs});

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
          'Appointments',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontFamily: mainFont,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            ListView.builder(
                itemCount: labs.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: kliteColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              labs[index].name,
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 15,
                                fontFamily: mainFont,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.5,
                                  color: kPrimaryColor,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: FlatButton(
                                onPressed: () {
                                  // Flutter
                                  _makePhoneCall('tel:${labs[index].phone}');
                                },
                                child: Text('Call to Book'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
            Expanded(child: Container()),
            AppointmentsCard(
              fullDate: 'April 01, 2021 18:55',
              name: 'Dr. Youssef El-Shimy',
              title: 'Consaltant of Dermatology and Andrology',
              titleDate: 'April , 2021',
            )
          ],
        ),
      ),
    );
  }
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
