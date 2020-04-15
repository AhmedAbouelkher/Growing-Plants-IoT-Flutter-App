import 'package:flutter/material.dart';
import 'package:growing_plants_iot_app/screens/home.dart';
import 'package:growing_plants_iot_app/widgets/growing_leaf_indicator.dart';

class GrowingStatus extends StatelessWidget {
  const GrowingStatus({
    Key key,
    this.date = "null",
    this.title = "null",
    this.subTitle = "null",
    this.finished = false,
  }) : super(key: key);
  final String date;
  final String title;
  final String subTitle;
  final bool finished;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: response.setWidth(190),
      height: response.setHeight(90),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Text(
              date,
              style: TextStyle(
                color:
                    finished ? Color(0xff1CA953) : Colors.grey.withOpacity(0.8),
                fontSize: response.setFontSize(16),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GrowingLeafIndicator(active: finished),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.only(left: response.setWidth(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: response.setFontSize(16),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: response.setHeight(5)),
                  Text(
                    subTitle,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: response.setFontSize(13),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
