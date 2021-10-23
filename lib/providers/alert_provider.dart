import 'package:flutter/material.dart';

class AlertProvider extends ChangeNotifier {
  Future<void> showMyDialog(
      BuildContext context, String title, String content) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          shape: ContinuousRectangleBorder(
              side: const BorderSide(
                width: 1,
                color: Color(0xfff7a622),
              ),
              borderRadius: BorderRadius.circular(25)),
          title: Text(title),
          content: SingleChildScrollView(child: Text(content)),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'OK',
                style: TextStyle(color: Color(0xfff7a622)),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
