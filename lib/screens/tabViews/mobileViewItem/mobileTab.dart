import 'package:flutter/material.dart';
import 'package:xd_adobe/screens/tabViews/mobileViewItem/contents.dart';

Widget firstTab(context, {width, height}) {
  final width = MediaQuery.of(context).size.width;
  return Stack(
    children: [
      Container(
        margin: const EdgeInsets.only(top: 0),
        child: firstItemBox(
            width: width,
            text: "Drei einfache Schritte zu deinem neuen Job",
            text2: 'Erstellen dein Lebenlauf',
            image: 'assets/images/undraw_Profile_data_re_v81r@2x.png'),
      ),
      Container(
        margin: const EdgeInsets.only(top: 800),
        child: thirdItemBox(
            width: width,
            text: 'Mit nur einem Klick bewerben',
            image: 'assets/images/undraw_personal_file_222m.png'),
      ),
      Container(
        margin: const EdgeInsets.only(top: 400),
        child: secondItemBox(
            width: width,
            text: 'Erstellen dein Lebenlauf',
            image: 'assets/images/undraw_task_31wc@2x.png'),
      ),
    ],
  );
}

Widget secondTab(context, {width, height}) {
  final width = MediaQuery.of(context).size.width;
  return Stack(
    children: [
      Container(
        margin: const EdgeInsets.only(top: 0),
        child: firstItemBox(
            width: width,
            text: "Drei einfache Schritte zu deinem neuen Mitarbeiter",
            text2: 'Erstellen dein Unternehmensprofil',
            image: 'assets/images/undraw_Profile_data_re_v81r@2x.png'),
      ),
      Container(
        margin: const EdgeInsets.only(top: 400),
        child: secondItemBox(
            width: width,
            text: 'Erstellen ein Jobinerat',
            image: 'assets/images/undraw_about_me_wa29@2x.png'),
      ),
      Container(
        margin: const EdgeInsets.only(top: 800),
        child: thirdItemBox(
            width: width,
            text: 'Wähle deinen neuen Mitarbeiter aus',
            image: 'assets/images/undraw_swipe_profiles1_i6mr@2x.png'),
      )
    ],
  );
}

Widget thirdTab(context, {width, height}) {
  final width = MediaQuery.of(context).size.width;
  return Stack(
    children: [
      Container(
        margin: const EdgeInsets.only(top: 0),
        child: firstItemBox(
            width: width,
            text: "Drei einfache Schritte zur Vermittlung neuer Mitarbeiter",
            text2: 'Erstellen dein Unternehmensprofil',
            image: 'assets/images/undraw_Profile_data_re_v81r@2x.png'),
      ),
      Container(
        margin: const EdgeInsets.only(top: 400),
        child: secondItemBox(
            width: width,
            text: 'Erhalte Vermittlungs- angebot von Arbeitgeber',
            image: 'assets/images/undraw_job_offers_kw5d.png'),
      ),
      Container(
        margin: const EdgeInsets.only(top: 800),
        child: thirdItemBox(
            width: width,
            text: 'Vermittlung nach Provision oder Stundenlohn',
            image: 'assets/images/undraw_business_deal_cpi9@2x.png'),
      )
    ],
  );
}
