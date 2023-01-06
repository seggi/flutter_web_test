import 'package:flutter/material.dart';
import 'package:xd_adobe/widgets/shared/separator.dart';
import 'package:xd_adobe/widgets/shared/style.dart';
import 'package:xd_adobe/widgets/waveClipper.dart';

Widget firstItemBox({width, height, number, text, text2, image}) {
  return Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.all(10),
    child: Container(
      width: 850,
      height: 350,
      alignment: Alignment.center,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            left: 10,
            bottom: 30,
            child: Row(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      color: grey50, borderRadius: BorderRadius.circular(250)),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                SizedBox(
                  width: 300,
                  child: Text(text,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 22,
                      )),
                ),
                verticalSpaceRegular,
              ],
            ),
          ),
          Positioned(
            top: 150,
            left: 20,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: RichText(
                    text: TextSpan(
                      text: '1. ',
                      style: const TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.w400,
                          color: greyText),
                      children: <TextSpan>[
                        TextSpan(
                            text: text2,
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                color: greyText)),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 0, left: 100),
                  child: Image.asset(
                    image,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget secondItemBox({width, height, number, text, image}) {
  return Column(
    children: [
      ClipPath(
        clipper: WaveClipperThree(),
        child: Container(
          height: 100,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 218, 252, 245),
                Color.fromARGB(255, 218, 235, 255)
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              stops: [0.4, 0.7],
              tileMode: TileMode.repeated,
            ),
          ),
        ),
      ),
      Container(
        height: 200,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 218, 252, 245),
              Color.fromARGB(255, 218, 235, 255)
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            stops: [0.4, 0.7],
            tileMode: TileMode.repeated,
          ),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: const EdgeInsets.only(left: 20, bottom: 20),
            child: Image.asset(
              image,
              height: 180.0,
              fit: BoxFit.cover,
            ),
          ),
          horizontalSpaceLarge,
          horizontalSpaceRegular,
          Container(
            margin: const EdgeInsets.only(top: 55, right: 10),
            child: RichText(
              text: TextSpan(
                text: '2. ',
                style: const TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.w400,
                    color: greyText),
                children: <TextSpan>[
                  TextSpan(
                      text: text,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: greyText)),
                ],
              ),
            ),
          )
        ]),
      ),
      ClipPath(
        clipper: WaveClipperFour(),
        child: Container(
          height: 20,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 218, 252, 245),
                Color.fromARGB(255, 218, 235, 255)
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              stops: [0.4, 0.7],
              tileMode: TileMode.repeated,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget thirdItemBox({width, height, number, text, image}) {
  return Container(
    alignment: Alignment.center,
    child: Container(
      height: 500,
      width: 800,
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 10,
            left: 0,
            width: 250,
            height: 250,
            child: Container(
              decoration: BoxDecoration(
                  color: grey50, borderRadius: BorderRadius.circular(250)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 100, top: 30),
            alignment: Alignment.topCenter,
            child: Row(
              children: [
                const Text('3.',
                    style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.w400,
                        color: greyText)),
                SizedBox(
                  width: 230,
                  child: Text(text,
                      overflow: TextOverflow.visible,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: greyText)),
                ),
              ],
            ),
          ),
          Positioned(
            right: 30,
            top: 0,
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                image,
                height: 300.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
