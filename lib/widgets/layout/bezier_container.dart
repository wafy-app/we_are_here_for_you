import 'dart:math';

import 'package:flutter/material.dart';

import 'custom_clipper.dart';

class BezierContainer extends StatelessWidget {
  int myColor;
  BezierContainer(this.myColor);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Transform.rotate(
      angle: -pi / 3.5,
      child: ClipPath(
        clipper: ClipPainter(),
        child: Container(
          height: MediaQuery.of(context).size.height * .5,
          width: MediaQuery.of(context).size.width * 1.8,
          color: Color(myColor),
        ),
      ),
    ));
  }
}
