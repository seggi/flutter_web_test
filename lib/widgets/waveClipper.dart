import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path> {
  final double waveDeep;
  final double waveDeep2;

  WaveClipper({this.waveDeep = 100, this.waveDeep2 = 0});
  @override
  Path getClip(Size size) {
    final double sw = size.width;
    final double sh = size.height;

    final Offset controlPoint1 = Offset(sw * .25, sh - waveDeep2 * 2);
    final Offset destinationPoint1 = Offset(sw * .5, sh - waveDeep - waveDeep2);

    final Offset controlPoint2 = Offset(sw * .75, sh - waveDeep * 2);
    final Offset destinationPoint2 = Offset(sw, sh - waveDeep);

    final Path path = Path()
      ..lineTo(0, size.height - waveDeep2)
      ..quadraticBezierTo(controlPoint1.dx, controlPoint1.dy,
          destinationPoint1.dx, destinationPoint1.dy)
      ..quadraticBezierTo(controlPoint2.dx, controlPoint2.dy,
          destinationPoint2.dx, destinationPoint2.dy)
      ..lineTo(size.width, 0)
      ..lineTo(0, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipperTwo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    double offset = 130.0;
    Path path = Path();
    path.moveTo(0, height - (height - offset));
    path.lineTo(0, height);
    path.lineTo(width, height);
    path.lineTo(width, height - (height - offset));
    path.quadraticBezierTo(
        3 * width / 4, height - 360, width - 170, height - (height - 130));
    path.quadraticBezierTo(
        3 * width / 6, height - 240, width / 4, height - (height - 120));
    path.quadraticBezierTo(width / 6, 100, 0, height - (height - offset));

    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipperThree extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // Path path = new Path();
    // path.lineTo(0, size.height * 0.85); //vertical line
    // path.cubicTo(size.width / 3, size.height, 2 * size.width / 3,
    //     size.height * 0.7, size.width, size.height * 0.75); //cubic curve
    // path.lineTo(size.width, 0); //vertical line
    // return path;
    // ? bottom
    // var path = Path();
    // path.lineTo(0, 220);
    // path.quadraticBezierTo(size.width / 4, 160, size.width / 2, 175);
    // path.quadraticBezierTo(3 / 4 * size.width, 190, size.width, 130);
    // path.lineTo(size.width, 0);
    // path.close();
    // return path;

    // ! Right one
    // Path path = Path();
    // path.lineTo(0, size.height);
    // path.quadraticBezierTo(
    //     size.width / 4, size.height - 40, size.width / 2, size.height - 20);
    // path.quadraticBezierTo(
    //     3 / 4 * size.width, size.height, size.width, size.height - 30);
    // path.lineTo(size.width, 0);
    // path.close();
    // return path;

    var path = new Path();
    path.lineTo(0.0, 20);

    var firstControlPoint = Offset(size.width / 4, 0.0);
    var firstEndPoint = Offset(size.width / 2.25, 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 3.25), 65);
    var secondEndPoint = Offset(size.width, 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipperFour extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 4, size.height - 40, size.width / 2, size.height - 20);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, size.height - 30);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
