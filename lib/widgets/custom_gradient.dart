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

BoxDecoration customGradientOne = const BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 218, 235, 255),
      Color.fromARGB(255, 218, 252, 245),
    ],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    stops: [0.4, 0.7],
    tileMode: TileMode.repeated,
  ),
);

BoxDecoration customGradientTwo = const BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color.fromARGB(201, 235, 244, 255),
      Color.fromARGB(219, 218, 252, 245),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomRight,
    stops: [0.4, 0.7],
    tileMode: TileMode.repeated,
  ),
);
