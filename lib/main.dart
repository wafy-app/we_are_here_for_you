import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:we_are_here_for_you/providers/events_provider.dart';
import 'package:we_are_here_for_you/screen/about_us.dart';
import 'package:we_are_here_for_you/screen/create_event.dart';

import 'package:we_are_here_for_you/screen/home_screen.dart';
import 'package:we_are_here_for_you/screen/login_page.dart';

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
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginPage(),
        // home: HomeScreen(),
        initialRoute: '/',
        routes: {
          CreateEvent.createEventPage: (context) => CreateEvent(),
          AboutUs.aboutUsPage: (context) => const AboutUs(),
        },
      ),
    );
  }
}
