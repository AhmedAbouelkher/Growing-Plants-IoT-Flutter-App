import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlantStatus {
  PlantStatus({
    Key key,
    this.iconColor = Colors.black54,
    this.currentProgressValue = 50,
    this.icon = FontAwesomeIcons.tint,
  });
  final Color iconColor;
  final int currentProgressValue;
  final IconData icon;
}
