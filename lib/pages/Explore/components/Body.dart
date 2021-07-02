
import 'package:flutter/material.dart';
import 'package:gp/database.dart';
import 'package:gp/stakeholdersClases/Labs.dart';

import 'package:provider/provider.dart';

import 'CategoriesListWidget.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override


  build(BuildContext context) {

    return StreamProvider<List<Lab>>.value(
      value: DatabaseService().labsData,
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TabBarView(
                children: [
                  CategoriesWidget("Explore"),
                  CategoriesWidget("Recommended"),
                  CategoriesWidget("Saved"),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
