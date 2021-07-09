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
    return Shimmer.fromColors(
      baseColor: Colors.blue[900],
      highlightColor: Colors.grey[200],
      child: Center(
          child: Column(
        children: [
          Expanded(child: Container()),
          Image(
            image: AssetImage('assets/logo.png'),
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width / 3,
          ),
          SizedBox(
            height: 50,
          ),
          Image(
            image: AssetImage('assets/slogen.png'),
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width / 3,
          ),
          Expanded(child: Container()),
        ],
      )),
    );
  }
}
