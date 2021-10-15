import 'package:flutter/material.dart';

import 'package:we_are_here_for_you/widgets/drawer_app/my_drawer.dart';
import 'package:we_are_here_for_you/widgets/main_app/all_events.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('من اجلكم'),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'تسجيل الدخول',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: AllEvents(),
      drawer: MyDrawer(),
    );
  }
}
