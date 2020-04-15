import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:growing_plants_iot_app/screens/home.dart';

class RecommendedAction extends StatelessWidget {
  const RecommendedAction({
    this.title = "null",
    this.icon = Icons.close,
  });
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(response.setHeight(5)),
          topRight: Radius.circular(response.setHeight(5)),
        ),
        border: Border.all(
            color: Colors.grey.withOpacity(0.5), width: response.setWidth(1)),
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: response.setWidth(4),
            color: Color(0xff1CA953),
          ),
          SizedBox(width: response.setWidth(25)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FaIcon(
                icon,
                color: Colors.grey.withOpacity(0.5),
                size: response.setHeight(18),
              ),
              SizedBox(height: response.setHeight(15)),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: response.setFontSize(16),
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
