import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:growing_plants_iot_app/screens/home.dart';

class PlantProgressStatus extends StatelessWidget {
  const PlantProgressStatus({
    Key key,
    this.iconColor = Colors.black38,
    this.currentProgressValue = 50,
    this.icon = FontAwesomeIcons.tint,
  }) : super(key: key);
  final Color iconColor;
  final int currentProgressValue;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: response.setHeight(35)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FaIcon(
            icon,
            size: response.setHeight(18),
            color: iconColor,
          ),
          Container(
            width: response.setWidth(70),
            child: FAProgressBar(
              currentValue: currentProgressValue,
              backgroundColor: Colors.black12,
              progressColor: Color(0xff1CA953),
              size: response.setHeight(5),
            ),
          ),
        ],
      ),
    );
  }
}
