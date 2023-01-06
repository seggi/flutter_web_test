import 'package:flutter/material.dart';

class ContentBoxWidget {
  static Widget desktopBody(context, {List<Widget> items = const []}) {
    return Scaffold(
      body: SizedBox(
          child: Stack(
        children: [...items],
      )),
    );
  }

  static Widget mobileBody(context, {List<Widget> items = const []}) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
            height: height,
            width: width,
            child: Stack(
              children: [...items],
            )),
      ),
    );
  }
}
