import 'package:flutter/material.dart';

import 'constants.dart';

Padding inputWidget(
      {String hintText,
      IconData primaryIcon,
      bool endIcon = false,
      IconData sufixIconData}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: endIcon
              ? Icon(
                  sufixIconData,
                  color: kMainColor,
                )
              : null,
          hintText: hintText,
          hintStyle: TextStyle(color: kMainColor),
          icon: Icon(
            primaryIcon,
            color: kMainColor,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: kMainColor.withOpacity(0.8), width: 1),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kMainColor, width: 1.5),
          ),
        ),
      ),
    );
  }


  Widget mainButton(IconData iconName, Function onPressed){
    return Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: SizedBox(
                      width: 180,
                      height: 45,
                      child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      ),
                      color: kSecondyColor,
                      onPressed: onPressed, 
                      child: Icon(iconName,
                      color: kMainColor,
                      )),
                    ),
                  );
  }