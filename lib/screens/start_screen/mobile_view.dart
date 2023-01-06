import 'package:flutter/material.dart';
import 'package:xd_adobe/common/content_box.dart';
import 'package:xd_adobe/common/navBar.dart';
import 'package:xd_adobe/common/toggleButton.dart';
import 'package:xd_adobe/screens/tabViews/mobileViewItem/mobileTab.dart';
import 'package:xd_adobe/widgets/shared/style.dart';
import 'package:xd_adobe/widgets/waveClipper.dart';

class MobileView extends StatefulWidget {
  final String? title;
  final String? image;
  final String? btnText;
  final double width;
  const MobileView(
      {super.key, this.title, this.image, this.btnText, required this.width});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    final title = widget.title;
    final image = widget.image;
    final btnText = widget.btnText;
    final width = widget.width;
    return ContentBoxWidget.mobileBody(context, items: [
      Container(
        margin: const EdgeInsets.only(bottom: 50),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return NotificationListener<ScrollNotification>(
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: GestureDetector(
                  child: Column(children: [
                    ClipPath(
                        clipper: WaveClipper(waveDeep: 50, waveDeep2: 0),
                        child: Container(
                          width: width,
                          decoration: const BoxDecoration(
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
                          ),
                          child: Container(
                              margin:
                                  const EdgeInsets.only(top: 80, bottom: 80),
                              padding:
                                  const EdgeInsets.only(top: 12, bottom: 12),
                              child: Column(children: [
                                SizedBox(
                                  width: 300,
                                  child: Text(
                                    title!,
                                    style: textStyle,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(
                                  child: Image.asset(
                                    image!,
                                    width: width,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ])),
                        )),
                    CustomToggleButton(
                      tabViews: [
                        firstTab(context),
                        secondTab(context),
                        thirdTab(context)
                      ],
                    ),
                  ]),
                ),
              ),
            );
          },
        ),
      ),
      const Positioned(top: 0, child: Navbar()),
      Positioned(
        bottom: 0,
        child: Container(
          width: width,
          padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
          decoration: const BoxDecoration(
            color: defaultColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 0.0), //(x,y)
                blurRadius: 1.0,
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                width: 350.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  gradient: const LinearGradient(
                    colors: [lightGreen300, blue500],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    stops: [0.4, 0.7],
                    tileMode: TileMode.repeated,
                  ),
                ),
                child: TextButton(
                  onPressed: () => {},
                  child: Text(
                    btnText!,
                    style: TextStyle(color: defaultColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
