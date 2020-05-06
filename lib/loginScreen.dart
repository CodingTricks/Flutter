import 'package:flutter/material.dart';
import 'package:login_ui/constants.dart';
import 'package:login_ui/signupScreen.dart';
import 'package:login_ui/uiWidgets.dart';
import 'customAppbar.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset("assets/bg.jpg", fit: BoxFit.cover),
            Container(
              color:kSecondyColor.withOpacity(0.8),
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: height * 0.1,
                    width: width,
                    child: CustomAppBar(
                      screenName: "Login",
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: height * 0.5,
                    alignment: Alignment.center,
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 45,
                        fontFamily: 'Righteous',
                        color: kMainColor,
                      ),
                    ),
                  ),

                  inputWidget(
                    hintText: "Username",
                    primaryIcon: Icons.person_outline,
                  ),


                  inputWidget(
                      hintText: "Password",
                      primaryIcon: Icons.vpn_key,
                      endIcon: true,
                      sufixIconData: Icons.help_outline),
                  mainButton(Icons.exit_to_app, (){}),

                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(noAccount, style: TextStyle(
                      color: kMainColor,
                      fontSize: 16)),
                      FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SignUpScreen()
                      )), 
                      child: Text("SignUp", style: TextStyle(
                        color: kMainColor
                      ),))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  
}
