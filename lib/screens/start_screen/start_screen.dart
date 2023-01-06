import 'package:flutter/material.dart';
import 'package:xd_adobe/screens/start_screen/desktop_view.dart';
import 'package:xd_adobe/screens/start_screen/mobile_view.dart';
import 'package:xd_adobe/utils/constant.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    const String title = 'Deine Job website';
    const String image = 'assets/images/undraw_agreement_aajr.png';
    const String btnText = "Kostenlos Registrierieren";
    return LayoutBuilder(builder: (context, constraints) {
      var width = constraints.maxWidth;
      if (width > targetDesktop) {
        return DesktopView(
          title: title,
          image: image,
          btnText: btnText,
          width: width,
        );
      } else if (width > targetMobile && constraints.maxWidth < targetDesktop) {
        return MobileView(
          title: title,
          image: image,
          btnText: btnText,
          width: width,
        );
      } else {
        return MobileView(
            title: title, image: image, btnText: btnText, width: width);
      }
    });
  }
}
