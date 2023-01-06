import 'package:flutter/material.dart';
import 'package:xd_adobe/screens/tabViews/desktopViewItem/contents.dart';
import 'package:xd_adobe/widgets/shared/separator.dart';

Widget firstTab(context, {width, height}) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.width;
  return SizedBox(
    child: Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 0),
          alignment: Alignment.topCenter,
          child: firstItemBox(
              width: width,
              text: "Drei einfache Schritte zu deinem neuen Job",
              text2: 'Erstellen dein Lebenlauf',
              image: 'assets/images/undraw_Profile_data_re_v81r@2x.png'),
        ),
        verticalSpaceMassive,
        Container(
          margin: const EdgeInsets.only(top: 400),
          alignment: Alignment.center,
          child: secondItemBox(
              width: width,
              text: 'Erstellen dein Lebenlauf',
              image: 'assets/images/undraw_task_31wc@2x.png'),
        ),
        Container(
          margin: const EdgeInsets.only(top: 820),
          alignment: Alignment.bottomCenter,
          child: thirdItemBox(
              width: width,
              text: 'Mit nur einem Klick bewerben',
              image: 'assets/images/undraw_personal_file_222m.png'),
        ),
        Positioned(
          bottom: 710,
          left: 400,
          child: Container(
            width: width - 200,
            height: 400,
            alignment: Alignment.centerLeft,
            child: Image.asset(
              'assets/images/Gruppe_1821.png',
              height: 320,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 320,
          left: 520,
          child: Container(
            width: 500,
            height: 500,
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/Gruppe_1822.png',
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget secondTab(context, {width, height}) {
  final width = MediaQuery.of(context).size.width;
  return Stack(
    children: [
      Container(
        margin: const EdgeInsets.only(top: 0),
        alignment: Alignment.topCenter,
        child: firstItemBox(
            width: width,
            text: "Drei einfache Schritte zu deinem neuen Mitarbeiter",
            text2: 'Erstellen dein Unternehmensprofil',
            image: 'assets/images/undraw_Profile_data_re_v81r@2x.png'),
      ),
      Container(
        margin: const EdgeInsets.only(top: 400),
        alignment: Alignment.center,
        child: secondItemBox(
            width: width,
            text: 'Erstellen ein Jobinerat',
            image: 'assets/images/undraw_about_me_wa29@2x.png'),
      ),
      Container(
        margin: const EdgeInsets.only(top: 820),
        alignment: Alignment.bottomCenter,
        child: thirdItemBox(
            width: width,
            text: 'Wähle deinen neuen Mitarbeiter aus',
            image: 'assets/images/undraw_swipe_profiles1_i6mr@2x.png'),
      ),
      Positioned(
        bottom: 710,
        left: 400,
        child: Container(
          width: width - 200,
          height: 400,
          alignment: Alignment.centerLeft,
          child: Image.asset(
            'assets/images/Gruppe_1821.png',
            height: 320,
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
        bottom: 320,
        left: 520,
        child: Container(
          width: 500,
          height: 500,
          alignment: Alignment.center,
          child: Image.asset(
            'assets/images/Gruppe_1822.png',
            height: 180,
            fit: BoxFit.cover,
          ),
        ),
      ),
    ],
  );
}

Widget thirdTab(context, {width, height}) {
  final width = MediaQuery.of(context).size.width;
  return Stack(
    children: [
      Container(
        margin: const EdgeInsets.only(top: 0),
        alignment: Alignment.topCenter,
        child: firstItemBox(
            width: width,
            text: "Drei einfache Schritte zur Vermittlung neuer Mitarbeiter",
            text2: 'Erstellen dein Unternehmensprofil',
            image: 'assets/images/undraw_Profile_data_re_v81r@2x.png'),
      ),
      Container(
        margin: const EdgeInsets.only(top: 400),
        alignment: Alignment.center,
        child: secondItemBox(
            width: width,
            text: 'Erhalte Vermittlungs- angebot von Arbeitgeber',
            image: 'assets/images/undraw_job_offers_kw5d.png'),
      ),
      Container(
        margin: const EdgeInsets.only(top: 820),
        alignment: Alignment.bottomCenter,
        child: thirdItemBox(
            width: width,
            text: 'Vermittlung nach Provision oder Stundenlohn',
            image: 'assets/images/undraw_business_deal_cpi9@2x.png'),
      ),
      Positioned(
        bottom: 710,
        left: 400,
        child: Container(
          width: width - 200,
          height: 400,
          alignment: Alignment.centerLeft,
          child: Image.asset(
            'assets/images/Gruppe_1821.png',
            height: 320,
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
        bottom: 320,
        left: 520,
        child: Container(
          width: 500,
          height: 500,
          alignment: Alignment.center,
          child: Image.asset(
            'assets/images/Gruppe_1822.png',
            height: 180,
            fit: BoxFit.cover,
          ),
        ),
      ),
    ],
  );
}
