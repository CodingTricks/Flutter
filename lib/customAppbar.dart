import 'package:flutter/material.dart';

import 'constants.dart';

class CustomAppBar extends StatelessWidget {
  final String screenName;
  final Function onPressed;
 CustomAppBar({this.onPressed, this.screenName});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Material(
            color: Colors.transparent,
            child: IconButton(
            icon: Icon(Icons.arrow_back_ios,
            color: kMainColor,
            ), 
            onPressed: onPressed),
        ),
          Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Text(screenName,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kMainColor
          ),
          ),
        ),
        Container(
          height: 40,
          width: 4,
          decoration: BoxDecoration(
            color: kMainColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            )
          ),
        )
      ],
    );
  }
}