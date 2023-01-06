import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:xd_adobe/common/content_box.dart';
import 'package:xd_adobe/common/navBar.dart';
import 'package:xd_adobe/common/toggleButton.dart';
import 'package:xd_adobe/screens/tabViews/desktopViewItem/desktopTab.dart';
import 'package:xd_adobe/widgets/custom_gradient.dart';
import 'package:xd_adobe/widgets/shared/separator.dart';
import 'package:xd_adobe/widgets/shared/style.dart';
import 'package:xd_adobe/widgets/waveClipper.dart';

class DesktopView extends StatefulWidget {
  final String? title;
  final String? image;
  final String? btnText;
  final double width;
  const DesktopView(
      {super.key, this.title, this.image, this.btnText, required this.width});

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  late String scrollAction = '';
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final title = widget.title;
    final image = widget.image;
    final btnText = widget.btnText;
    final width = widget.width;
    final height = MediaQuery.of(context).size.height;

    return ContentBoxWidget.mobileBody(context, items: [
      LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return NotificationListener<ScrollNotification>(
            onNotification: (scrollNotification) {
              // Get position when scrolling the page
              if (_scrollController.position.userScrollDirection ==
                  ScrollDirection.reverse) {
                setState(() {
                  if (_scrollController.position.pixels >= 382 ||
                      _scrollController.position.pixels >= 316) {
                    scrollAction = 'down';
                  }
                });
              }

              if (_scrollController.position.userScrollDirection ==
                  ScrollDirection.forward) {
                setState(() {
                  if (_scrollController.position.pixels < 382 ||
                      _scrollController.position.pixels < 316) {
                    scrollAction = 'top';
                  }
                });
              }

              return true;
            },
            child: SingleChildScrollView(
              controller: _scrollController,
              physics: const ClampingScrollPhysics(),
              child: Column(
                children: [
                  ClipPath(
                      clipper: WaveClipper(waveDeep: 50, waveDeep2: 0),
                      child: Container(
                        width: width,
                        height: height - 300,
                        decoration: customGradientOne,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                width: width / 4,
                                margin: const EdgeInsets.only(top: 180),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 200,
                                        child: Text(
                                          title!,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 45),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      verticalSpaceLarge,
                                      Container(
                                        width: 250,
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
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
                                            style: const TextStyle(
                                                color: defaultColor),
                                          ),
                                        ),
                                      ),
                                    ])),
                            ClipOval(
                              child: Container(
                                color: Colors.white,
                                child: Image.asset(
                                  image!,
                                  width: 400.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                  CustomToggleButton(
                    tabViews: [
                      firstTab(context),
                      secondTab(context),
                      thirdTab(context)
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
      Positioned(top: 0, child: Navbar(scrollOption: scrollAction)),
    ]);
  }
}
