import 'package:flutter/material.dart';

class OrangeButton extends StatelessWidget {
  final String title;
  final void Function() onSubmit;
  // ignore: use_key_in_widget_constructors
  const OrangeButton(this.title, this.onSubmit);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSubmit,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        padding: const EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        child: Text(
          title,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
