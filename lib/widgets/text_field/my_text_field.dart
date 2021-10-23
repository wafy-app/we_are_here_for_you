import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  String title;
  void Function(String)? myOnChange;
  bool isPassword;
  double myHieght;
  MyTextField(this.title, this.myHieght, this.myOnChange,
      {this.isPassword = false});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: MediaQuery.of(context).size.height * myHieght,
        child: Flexible(
          child: TextField(
            obscureText: isPassword,
            onChanged: myOnChange,
            decoration: InputDecoration(
              label: Text(title),
              hintText: title,
              border: const OutlineInputBorder(
                // borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(35.0),
                ),
              ),
              fillColor: Color(0xfff3f3f4),
              filled: true,
            ),
          ),
        ));
  }
}

// Widget MyTextField(String title, void Function(String)? myOnChange,
//     {bool isPassword = false}) {
//   return 
// }
