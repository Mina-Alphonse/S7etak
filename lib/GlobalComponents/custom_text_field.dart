import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  final Function onTap;

  final String text;
  CustomTextField({this.onTap,this.text});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          title: Text(
            text,
          ),
        ),
      ],
    );
  }
}
