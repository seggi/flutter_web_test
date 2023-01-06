import 'package:flutter/material.dart';
import 'package:xd_adobe/widgets/shared/separator.dart';
import 'package:xd_adobe/widgets/shared/style.dart';

class CustomToggleButton extends StatefulWidget {
  final List<dynamic>? tabViews;
  const CustomToggleButton({super.key, this.tabViews});

  @override
  State<CustomToggleButton> createState() => _CustomToggleButtonState();
}

class _CustomToggleButtonState extends State<CustomToggleButton> {
  List<bool> isSelected = [true, false, false];
  ScrollController scrollController = ScrollController();
  late int currentTab = 0;

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Column(
        children: [
          Container(
            width: width,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(12),
            child: SingleChildScrollView(
              controller: scrollController,
              scrollDirection: Axis.horizontal,
              physics: const ClampingScrollPhysics(),
              child: ToggleButtons(
                isSelected: isSelected,
                selectedColor: Colors.white,
                fillColor: lightGreen200,
                splashColor: const Color.fromARGB(255, 123, 215, 206),
                highlightColor: const Color.fromARGB(255, 123, 215, 206),
                textStyle: const TextStyle(fontWeight: FontWeight.w500),
                renderBorder: true,
                borderWidth: 1,
                borderRadius: BorderRadius.circular(10),
                selectedBorderColor: const Color.fromARGB(255, 123, 215, 206),
                onPressed: (int newIndex) {
                  setState(() {
                    for (int index = 0; index < isSelected.length; index++) {
                      if (index == newIndex) {
                        isSelected[index] = true;
                        currentTab = newIndex;
                        scrollController.animateTo(200.0,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOutCirc);
                      } else {
                        isSelected[index] = false;
                        currentTab = newIndex;
                        scrollController.animateTo(-100.0,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOutCirc);
                      }
                    }
                  });
                },
                children: [
                  Container(
                    width: 180,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Text('Arbeitnehmer',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                        )),
                  ),
                  Container(
                    width: 180,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Text('Arbeitgeber',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                        )),
                  ),
                  Container(
                    width: 180,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Text('Temporärbüro',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                        )),
                  ),
                ],
              ),
            ),
          ),
          verticalSpaceMedium,
          _displayView(currentTab),
        ],
      );
    });
  }

// Display all tab
  _displayView(currentTab) {
    final tabViews = widget.tabViews;
    for (int index = 0; index < tabViews!.length; index++) {
      if (currentTab == index) {
        return tabViews[index];
      }
    }
  }
}
