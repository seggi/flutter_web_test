import 'package:flutter/material.dart';
import 'package:xd_adobe/widgets/shared/style.dart';

Widget customGradient({width, height, children}) {
  return Container(
    height: height,
    width: width,
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        colors: [lightGreen300, blue500],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        stops: [0.4, 0.7],
        tileMode: TileMode.repeated,
      ),
    ),
    child: children,
  );
}
