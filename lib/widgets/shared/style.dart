import 'package:flutter/material.dart';

// Custom colors
const Color defaultColor = Color(0xFFFFFFFF);
const Color grey = Color.fromARGB(255, 113, 116, 118);

const Color lightGreen = Color.fromARGB(255, 224, 255, 249);
const Color lightGreen200 = Color.fromARGB(255, 129, 230, 217);
const Color lightGreen300 = Color.fromARGB(255, 49, 151, 149);
const Color blue500 = Color.fromARGB(255, 49, 130, 206);
const Color teal = Color.fromARGB(255, 56, 178, 172);
const Color greyText = Color.fromARGB(255, 113, 128, 150);
const Color grey100 = Color.fromARGB(255, 203, 213, 224);
const Color grey50 = Color.fromARGB(255, 243, 246, 249);

const TextStyle textStyle =
    TextStyle(fontSize: 50, fontWeight: FontWeight.w500);

TextStyle tabTextStyle({double? size, FontWeight? fontWeight}) {
  return TextStyle(fontSize: size, fontWeight: fontWeight, color: grey);
}
