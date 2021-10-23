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
        margin: const EdgeInsets.symmetric(vertical: 5),
        height: MediaQuery.of(context).size.height * myHieght,
        child: SizedBox(
          child: TextField(
            obscureText: isPassword,
            onChanged: myOnChange,
            decoration: InputDecoration(
              floatingLabelStyle: const TextStyle(color: Color(0xfff7a622)),
              focusColor: const Color(0xfff7a622),
              label: Text(title),
              hintText: title,
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xfff7a622),
                  style: BorderStyle.solid,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(35.0),
                ),
              ),
              border: const OutlineInputBorder(
                // borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(35.0),
                ),
              ),
              fillColor: const Color(0xfff3f3f4),
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
