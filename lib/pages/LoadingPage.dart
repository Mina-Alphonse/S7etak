import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return  Shimmer.fromColors(
      baseColor: Colors.blue[900],
      highlightColor: Colors.grey[200],
      child:Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Loading ...",style: TextStyle(fontSize: 40),),
        ],
      )),
    );
  }
}
