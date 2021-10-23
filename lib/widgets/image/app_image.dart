import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class AppImage extends StatelessWidget {
  const AppImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: const AssetImage('assets/لوغو نحن من أجلكم-01.png'),
      height: MediaQuery.of(context).size.height * 0.4,
    );
  }
}
