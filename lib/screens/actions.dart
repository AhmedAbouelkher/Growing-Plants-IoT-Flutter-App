import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:growing_plants_iot_app/models/recommended_actions.dart';
import 'package:growing_plants_iot_app/screens/home.dart';
import 'package:growing_plants_iot_app/widgets/recommended_action.dart';

class PlantActions extends StatelessWidget {
  List<RecommendedActions> _actions = [
    RecommendedActions(
      icon: FontAwesomeIcons.tint,
      title: "Put 1 glass \nof water",
    ),
    RecommendedActions(
      icon: FontAwesomeIcons.bolt,
      title: "Plug in \na charger",
    ),
    RecommendedActions(
      icon: FontAwesomeIcons.buffer,
      title: "Put 50 gm \nof fertilizer",
    ),
    RecommendedActions(
      icon: FontAwesomeIcons.lightbulb,
      title: "Increase \nthe light",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1B27),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   leading: InkWell(
      //     onTap: () => Navigator.pop(context),
      //     child: Hero(
      //       transitionOnUserGestures: true,
      //       tag: 'backarrow',
      //       child: Icon(Icons.arrow_back_ios,
      //           color: Colors.white, size: response.setHeight(18)),
      //     ),
      //   ),
      // ),

      /*
      IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(Icons.arrow_back_ios,
                      color: Colors.white, size: response.setHeight(18)),
                  onPressed: () => Navigator.pop(context),
                ),
       */
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: response.setWidth(30)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InkWell(
                focusColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () => Navigator.pop(context),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: response.setHeight(9)),
                  height: response.setHeight(50),
                  width: response.setWidth(50),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Hero(
                      transitionOnUserGestures: true,
                      tag: 'backarrow',
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: response.setHeight(18),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                "Actions",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 40,
                ),
              ),
              SizedBox(height: response.setHeight(60)),
              Text(
                "Recommended",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: response.setFontSize(18)),
              ),
              SizedBox(height: response.setHeight(40)),
              Container(
                height: response.screenHeight * 0.35,
                width: response.screenWidth,
                child: GridView.count(
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  crossAxisCount: 2,
                  childAspectRatio: (80) / (55),
                  padding: EdgeInsets.only(right: response.setWidth(20)),
                  children: _actions
                      .map<Widget>(
                        (action) => RecommendedAction(
                          icon: action.icon,
                          title: action.title,
                        ),
                      )
                      .toList(),
                ),
              ),
              SizedBox(height: response.setHeight(20)),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  width: response.screenWidth,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Color(0xff1CA953),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(response.setHeight(10)),
                      bottomLeft: Radius.circular(response.setHeight(10)),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: response.setWidth(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Confirm Actions",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: response.setFontSize(17),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        FaIcon(
                          FontAwesomeIcons.chevronRight,
                          color: Colors.white,
                          size: response.setHeight(18),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: response.setHeight(80)),
              Row(
                children: <Widget>[
                  Spacer(),
                  Text(
                    "Other Actions",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: response.setFontSize(16),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: response.setWidth(17)),
                  FaIcon(
                    FontAwesomeIcons.longArrowAltDown,
                    color: Colors.white54,
                    size: response.setHeight(20),
                  ),
                  SizedBox(width: response.setWidth(20)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
