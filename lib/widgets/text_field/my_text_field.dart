import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  String title;
  void Function(String)? myOnChange;
  bool isPassword;
  MyTextField(this.title, this.myOnChange, {this.isPassword = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          const SizedBox(
            height: 10,
          ),
          Flexible(
            child: TextField(
              obscureText: isPassword,
              onChanged: myOnChange,
              decoration: InputDecoration(hintText: title),
            ),
          )
        ],
      ),
    );
  }
}

// Widget MyTextField(String title, void Function(String)? myOnChange,
//     {bool isPassword = false}) {
//   return 
// }
