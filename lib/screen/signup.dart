import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:we_are_here_for_you/model/signup_data.dart';
import 'package:we_are_here_for_you/providers/alert_provider.dart';
import 'package:we_are_here_for_you/screen/login_page.dart';
import 'package:we_are_here_for_you/widgets/image/app_image.dart';
import 'package:we_are_here_for_you/widgets/layout/bezier_container.dart';
import 'package:we_are_here_for_you/widgets/button/back_button.dart';
import 'package:we_are_here_for_you/widgets/button/orange_button.dart';
import 'package:we_are_here_for_you/widgets/text_field/my_text_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key, this.title}) : super(key: key);
  static const signUpPageRoute = '/signUpPageRoute';
  final String? title;
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  SignUpData signUpData = SignUpData('', '', '', '', '', '', '', '');
  Widget _loginAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.popAndPushNamed(context, LoginPage.loginPageRoute);
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Already have an account ?',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Login',
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
        MyTextField('First Name', 0.08, (value) {
          signUpData.firstName = value;
        }),
        MyTextField('Last Name', 0.08, (value) {
          signUpData.lastName = value;
        }),
        MyTextField('Email', 0.08, (value) {
          signUpData.email = value;
        }),
        MyTextField('Phone', 0.08, (value) {
          signUpData.phone = value;
        }),
        MyTextField('Adress', 0.08, (value) {
          signUpData.address = value;
        }),
        MyTextField('Age', 0.08, (value) {
          signUpData.age = value;
        }),
        MyTextField('Password', 0.08, (value) {
          signUpData.password = value;
        }, isPassword: true),
        MyTextField('Confirm Password', 0.08, (value) {
          signUpData.confirmPassword = value;
        }, isPassword: true),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    int firstColor = 0xff132f4b;
    int secondColor = 0xff7c7c7d;
    var alartProvider = Provider.of<AlertProvider>(context, listen: false);

    // Reg EXP
    bool validateEmail(String value) {
      String pattern =
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      RegExp regex = RegExp(pattern);
      return (regex.hasMatch(value)) ? false : true;
    }

    void _submitSignUpData() {
      if (signUpData.firstName.isEmpty || signUpData.lastName.isEmpty) {
        alartProvider.showMyDialog(context, 'Name Error',
            'The first and last Name fields can\'t be empty.');
        return;
      }
      if (signUpData.email.isEmpty) {
        alartProvider.showMyDialog(
            context, 'Email Error', 'The email field can\'t be empty.');
        return;
      }
      if (signUpData.phone.isEmpty) {
        alartProvider.showMyDialog(context, 'Phone Error',
            'Please provide us with your phone number.');
        return;
      }
      if (signUpData.address.isEmpty) {
        alartProvider.showMyDialog(
            context, 'address Error', 'where do you live .');
        return;
      }
      if (signUpData.password.isEmpty || signUpData.confirmPassword.isEmpty) {
        alartProvider.showMyDialog(context, 'password Error',
            'The password and  confirmPassword fields  can\'t be empty.');
        return;
      }

      if (signUpData.password != signUpData.confirmPassword) {
        alartProvider.showMyDialog(context, 'password Error',
            'The password and  confirm Password have to be same.');
        return;
      }

      if (validateEmail(signUpData.email)) {
        alartProvider.showMyDialog(
            context, 'Email Error', 'Wrong email adress.');
        return;
      }

      print(signUpData.email);
      print(signUpData.password);
    }

    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: -height * .2,
              right: -MediaQuery.of(context).size.width * .6,
              child: BezierContainer(firstColor),
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
                    SizedBox(height: height * .1),
                    // const AppImage(),
                    _emailPasswordWidget(),
                    SizedBox(height: height * .01),
                    OrangeButton('Register Now', _submitSignUpData),
                    _loginAccountLabel(),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 0,
              child: MyBackButton(
                () {
                  Navigator.popAndPushNamed(context, LoginPage.loginPageRoute);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
