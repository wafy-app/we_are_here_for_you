import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:we_are_here_for_you/providers/alert_provider.dart';

import 'package:we_are_here_for_you/providers/events_provider.dart';
import 'package:we_are_here_for_you/screen/about_us.dart';
import 'package:we_are_here_for_you/screen/create_event.dart';

import 'package:we_are_here_for_you/screen/home_screen.dart';
import 'package:we_are_here_for_you/screen/login_page.dart';
import 'package:we_are_here_for_you/screen/signup.dart';
import 'package:we_are_here_for_you/widgets/main_app/all_events.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => EventsProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => AlertProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SignUpPage(),
        // home: LoginPage(),
        // home: AllEvents(),
        // home: HomeScreen(),
        initialRoute: '/',
        routes: {
          LoginPage.loginPageRoute: (context) => const LoginPage(),
          SignUpPage.signUpPageRoute: (context) => const SignUpPage(),
          CreateEvent.createEventPage: (context) => const CreateEvent(),
          AboutUs.aboutUsPage: (context) => const AboutUs(),
        },
      ),
    );
  }
}
