import 'package:flutter/material.dart';
import 'package:we_are_here_for_you/model/login_data.dart';
import 'package:we_are_here_for_you/providers/alert_provider.dart';
import 'package:we_are_here_for_you/screen/signup.dart';
import 'package:we_are_here_for_you/widgets/image/app_image.dart';
import 'package:we_are_here_for_you/widgets/layout/bezier_container.dart';
import 'package:we_are_here_for_you/widgets/button/orange_button.dart';
import 'package:we_are_here_for_you/widgets/text_field/my_text_field.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);
  static const loginPageRoute = '/LoginPageRoute';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var loginData = LogInData('', '');

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        MyTextField("Email", 0.1, (value) {
          loginData.email = value;
        }),
        MyTextField("Password", 0.1, (value) {
          loginData.password = value;
        }, isPassword: true),
      ],
    );
  }

  Widget _divider() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: const <Widget>[
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
        Navigator.pushNamed(context, SignUpPage.signUpPageRoute);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        padding: const EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
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

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    int grayColor = 0xff132f4b;
    int secondColor = 0xff7c7c7d;
    int orangeColor = 0xfff7a622;
    var alartProvider = Provider.of<AlertProvider>(context, listen: false);

    // Reg EXP
    bool validateEmail(String value) {
      String pattern =
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      RegExp regex = RegExp(pattern);
      return (regex.hasMatch(value)) ? false : true;
    }

    void _submitSignInData() {
      if (loginData.email.isEmpty) {
        alartProvider.showMyDialog(
            context, 'Email Error', 'The email field can\'t be empty.');
        return;
      }
      if (loginData.password.isEmpty) {
        alartProvider.showMyDialog(
            context, 'Password Error', 'The password field can\'t be empty.');
        return;
      }

      if (validateEmail(loginData.email)) {
        alartProvider.showMyDialog(
            context, 'Email Error', 'Wrong email adress.');
        return;
      }

      print(loginData.email);
      print(loginData.password);
    }

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
                  OrangeButton('Login', _submitSignInData),
                  _divider(),
                  // SizedBox(height: height * .02),
                  _createAccountLabel(),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
