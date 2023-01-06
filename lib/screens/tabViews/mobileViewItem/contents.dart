import 'package:flutter/material.dart';
import 'package:xd_adobe/widgets/shared/separator.dart';
import 'package:xd_adobe/widgets/shared/style.dart';
import 'package:xd_adobe/widgets/waveClipper.dart';

Widget firstItemBox({width, height, number, text, text2, image}) {
  return Container(
    height: 450,
    width: width,
    padding: const EdgeInsets.all(10),
    child: Stack(
      alignment: AlignmentDirectional.centerStart,
      children: [
        Positioned(
          right: 300,
          top: 180,
          child: Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
                color: grey50, borderRadius: BorderRadius.circular(250)),
          ),
        ),
        Container(
          width: width,
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SizedBox(
                width: width - 150,
                child: Text(text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22,
                    )),
              ),
              verticalSpaceRegular,
              Container(
                margin: const EdgeInsets.only(top: 20, left: 50),
                child: Image.asset(
                  image,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 30,
          child: Container(
            width: width,
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Text(
                  "1.",
                  style: tabTextStyle(size: 140, fontWeight: FontWeight.w400),
                ),
                horizontalSpaceRegular,
                Container(
                  width: 300,
                  margin: const EdgeInsets.only(top: 80),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    text2,
                    style: tabTextStyle(size: 18, fontWeight: FontWeight.w300),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Widget secondItemBox({width, height, number, text, image}) {
  return Container(
    width: width,
    child: Column(
      children: [
        ClipPath(
          clipper: WaveClipperThree(),
          child: Container(
            height: 50,
            width: width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(219, 218, 252, 245),
                  Color.fromARGB(201, 235, 244, 255),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.4, 0.7],
                tileMode: TileMode.repeated,
              ),
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(219, 218, 252, 245),
                Color.fromARGB(201, 235, 244, 255),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.4, 0.7],
              tileMode: TileMode.repeated,
            ),
          ),
          child: Column(children: [
            Container(
              width: width,
              margin: const EdgeInsets.only(left: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "2.",
                    style: tabTextStyle(size: 120, fontWeight: FontWeight.w400),
                  ),
                  horizontalSpaceSmall,
                  Container(
                    width: 250,
                    margin: const EdgeInsets.only(top: 70),
                    child: Text(
                      text,
                      style:
                          tabTextStyle(size: 18, fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, bottom: 20),
              child: Image.asset(
                image,
                height: 180.0,
                fit: BoxFit.cover,
              ),
            ),
          ]),
        ),
        ClipPath(
          clipper: WaveClipperFour(),
          child: Container(
            height: 50,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(219, 218, 252, 245),
                  Color.fromARGB(201, 235, 244, 255),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.4, 0.7],
                tileMode: TileMode.repeated,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget thirdItemBox({width, height, number, text, image}) {
  return SizedBox(
    height: 500,
    width: width,
    child: Stack(
      children: [
        Positioned(
          right: 200,
          bottom: 180,
          child: Container(
            width: 380,
            height: 380,
            decoration: BoxDecoration(
                color: grey50, borderRadius: BorderRadius.circular(450)),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 80),
          child: Row(
            children: [
              Text(
                "3.",
                style: tabTextStyle(size: 140, fontWeight: FontWeight.w400),
              ),
              horizontalSpaceRegular,
              SizedBox(
                width: 200,
                child: Text(
                  text,
                  overflow: TextOverflow.clip,
                  style: tabTextStyle(size: 18, fontWeight: FontWeight.w300),
                ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 130,
          left: 100,
          child: SizedBox(
            child: Image.asset(
              image,
              height: 220.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    ),
  );
}
