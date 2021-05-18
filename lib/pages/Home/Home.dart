import 'package:flutter/material.dart';
import 'package:gp/pages/Home/Components/Body.dart';

import '../../constraints.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

List<String> asami = [
  "fonsi 1",
  "fonsi 2",
  "fonsi 3",
  "fonsi 4",
  "fonsi 5",
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //
        // ),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                // height: MediaQuery.of(context).size.height / 3,
                accountEmail: Text(
                  "Testing Mail",
                  style: TextStyle(color: kPrimaryLiteColor),
                ),
                accountName: Text(
                  "Tesint Name",
                  style: TextStyle(color: kPrimaryLiteColor),
                ),
                decoration: BoxDecoration(color: kliteColor),
              ),
              ListView.builder(
                  itemCount: asami.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      trailing: Icon(Icons.icecream,color: kPrimaryLiteColor,),
                      title: Text(
                        asami[index],
                        style: TextStyle(color: kPrimaryLiteColor),
                      ),
                      onTap: () {},
                    );
                  })
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(child: Body()),
        ));
  }
}
