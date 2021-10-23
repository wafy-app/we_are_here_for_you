import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:we_are_here_for_you/screen/signup.dart';
import 'package:we_are_here_for_you/widgets/image/app_image.dart';
import 'package:we_are_here_for_you/widgets/layout/bezier_container.dart';
import 'package:we_are_here_for_you/widgets/button/back_button.dart';
import 'package:we_are_here_for_you/widgets/button/orange_button.dart';
import 'package:we_are_here_for_you/widgets/text_field/my_text_field.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          Text('or'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  Widget _createAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpPage()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Don\'t have an account ?',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Register',
              style: TextStyle(
                  color: Color(0xfff79c4f),
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        MyTextField("Email id", 0.1, (value) {}),
        MyTextField("Password", 0.1, (value) {}, isPassword: true),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // 0xff132f4b
    // 0xff7c7c7d
    // 0xfff7a622

    int grayColor = 0xff132f4b;
    int secondColor = 0xff7c7c7d;
    int orangeColor = 0xfff7a622;
    return Scaffold(
        body: Container(
      height: height,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: -height * .2,
            right: -MediaQuery.of(context).size.width * .6,
            child: BezierContainer(grayColor),
          ),
          Positioned(
            right: -MediaQuery.of(context).size.width * .9,
            bottom: -height * .15,
            child: BezierContainer(secondColor),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: height * .05),
                  const AppImage(),
                  _emailPasswordWidget(),
                  SizedBox(height: height * .05),
                  OrangeButton('Login', () {}),
                  _divider(),
                  // SizedBox(height: height * .02),
                  _createAccountLabel(),
                ],
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 0,
            child: MyBackButton(
              () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    ));
  }
}
