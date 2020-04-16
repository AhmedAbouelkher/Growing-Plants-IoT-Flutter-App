import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:growing_plants_iot_app/appTheme.dart';
import 'package:growing_plants_iot_app/models/plant_status.dart';
import 'package:growing_plants_iot_app/screens/actions.dart';
import 'package:growing_plants_iot_app/screens/growing_plan.dart';
import 'package:growing_plants_iot_app/widgets/plant_progress_status.dart';
import 'package:response/response.dart';

var response = ResponseUI();

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<PlantStatus> _plantStatus = [
    PlantStatus(
      currentProgressValue: 28,
      icon: FontAwesomeIcons.tint,
    ),
    PlantStatus(
      currentProgressValue: 55,
      icon: FontAwesomeIcons.bolt,
    ),
    PlantStatus(
      currentProgressValue: 20,
      icon: FontAwesomeIcons.lightbulb,
    ),
    PlantStatus(
      currentProgressValue: 40,
      icon: FontAwesomeIcons.temperatureLow,
    ),
    PlantStatus(
      currentProgressValue: 26,
      icon: FontAwesomeIcons.buffer,
    ),
  ];

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: response.setWidth(20),
                  vertical: response.setHeight(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Hero(
                    transitionOnUserGestures: true,
                    tag: 'backarrow',
                    child: Icon(Icons.arrow_back_ios,
                        color: Colors.black, size: response.setHeight(20)),
                  ),
                  Hero(
                      tag: 'sideslame',
                      child: FaIcon(FontAwesomeIcons.ellipsisH,
                          color: Colors.black87))
                ],
              ),
            ),
            SizedBox(height: response.setHeight(10)),
            Text(
              '  Ficus',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: response.setFontSize(45),
              ),
            ),
            Container(
              height: response.screenHeight,
              width: response.screenWidth,
              // color: Colors.red,
              child: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Positioned(
                    left: -45,
                    top: 20,
                    child: Image.asset(
                      'assets/ficus.png',
                      scale: response.screenHeight / 400,
                    ),
                  ),
                  Positioned(
                    right: response.setWidth(25),
                    top: response.setHeight(80),
                    child: Container(
                      width: response.setWidth(100),
                      child: Column(
                        children: _plantStatus
                            .map<Widget>(
                              (progressStatus) => PlantProgressStatus(
                                currentProgressValue:
                                    progressStatus.currentProgressValue,
                                icon: progressStatus.icon,
                                iconColor: progressStatus.iconColor,
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: response.setHeight(260),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (contex) => PlantActions(),
                          ),
                        );
                      },
                      child: Container(
                        height: response.setHeight(90),
                        width: response.setWidth(135),
                        decoration: BoxDecoration(
                          color: AppTheme.mainGreen,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(response.setHeight(10)),
                            bottomLeft: Radius.circular(response.setHeight(10)),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: response.setWidth(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Take\nAction",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: response.setFontSize(15),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              FaIcon(
                                FontAwesomeIcons.chevronRight,
                                color: Colors.white,
                                size: response.setHeight(20),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: response.setHeight(160),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GrowingPlan(),
                          ),
                        );
                      },
                      child: Container(
                        height: response.setHeight(70),
                        width: response.setWidth(150),
                        decoration: BoxDecoration(
                          color: AppTheme.mainGreen.withOpacity(0.95),
                          borderRadius: BorderRadius.only(
                            bottomRight:
                                Radius.circular(response.setHeight(10)),
                            topRight: Radius.circular(
                              response.setHeight(10),
                            ),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: response.setWidth(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border:
                                    Border.all(color: Colors.white30, width: 2),
                              ),
                              child: Center(
                                child: FaIcon(
                                  FontAwesomeIcons.pagelines,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                            ),
                            Text(
                              "Growing\nPlan",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: response.setFontSize(12),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            FaIcon(
                              FontAwesomeIcons.longArrowAltDown,
                              color: Colors.white54,
                              size: response.setHeight(18),
                            )
                          ],
                        ),
                      ),
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
}
