import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  final void Function() onSubmit;
  const MyBackButton(this.onSubmit);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSubmit,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: const Icon(Icons.keyboard_arrow_left, color: Colors.black),
      ),
    );
  }
}
