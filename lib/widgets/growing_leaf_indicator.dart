import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:growing_plants_iot_app/screens/home.dart';
import 'dart:math' as math;

double degreeToRadian(double angle) {
  return angle * (math.pi / 180);
}

class GrowingLeafIndicator extends StatelessWidget {
  const GrowingLeafIndicator({
    Key key,
    this.active = false,
  }) : super(key: key);
  final bool active;
  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationY(active ? 0 : math.pi)
        ..rotateZ(degreeToRadian(-20))
        ..setTranslationRaw(active ? 0 : -11, 0, 0),
      child: FaIcon(
        FontAwesomeIcons.leaf,
        color: active ? Color(0xff1CA953) : Colors.grey.withOpacity(0.8),
        size: response.setHeight(16),
      ),
    );
  }
}
