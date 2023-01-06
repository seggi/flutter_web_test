import 'package:flutter/material.dart';
import 'package:xd_adobe/widgets/shared/separator.dart';
import 'package:xd_adobe/widgets/shared/style.dart';

import '../../widgets/custom_gradient.dart';

class Navbar extends StatefulWidget {
  final String? scrollOption;
  const Navbar({super.key, this.scrollOption});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    final scrollOption = widget.scrollOption;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      child: Material(
        color: defaultColor,
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0)),
        elevation: 4,
        child: Column(
          children: [
            customGradient(height: 5.0),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  scrollOption == 'down'
                      ? Row(
                          children: [
                            const Text('Jetzt Klicken',
                                style: TextStyle(color: greyText)),
                            horizontalSpaceSmall,
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 2, left: 35, right: 35, bottom: 2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: grey100)),
                              child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Kostenlos Registrieren',
                                    style: TextStyle(color: teal),
                                  )),
                            ),
                          ],
                        )
                      : const SizedBox(),
                  horizontalSpaceSmall,
                  Container(
                    padding: const EdgeInsets.all(4),
                    alignment: Alignment.center,
                    child: TextButton(
                        onPressed: () => {},
                        child: const Text(
                          "Login",
                          style: TextStyle(color: teal),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
