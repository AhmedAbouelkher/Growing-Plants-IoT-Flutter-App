import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:growing_plants_iot_app/screens/home.dart';
import 'package:growing_plants_iot_app/widgets/growing_status.dart';

class GrowingPlan extends StatefulWidget {
  @override
  _GrowingPlanState createState() => _GrowingPlanState();
}

class _GrowingPlanState extends State<GrowingPlan>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> animation;
  double animationValue;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    animation = Tween<double>(begin: 0, end: 0.62)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    animation.addListener(() {
      setState(() {
        animationValue = animation.value;
      });
    });
    Future.delayed(Duration(milliseconds: 300), () {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: response.screenHeight * animation.value,
              width: response.screenWidth,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xffE6F5EC),
                Colors.white,
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            left: response.screenWidth * 0.4,
            child: Container(
              height: response.screenHeight,
              width: response.setWidth(3),
              color: Colors.black.withOpacity(0.07),
            ),
          ),
          Positioned(
            top: 9,
            right: 0,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        vertical: response.setHeight(9),
                        horizontal: response.setWidth(30)),
                    height: response.setHeight(50),
                    width: response.setWidth(50),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Hero(
                        transitionOnUserGestures: true,
                        tag: 'backarrow',
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: response.setHeight(21),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: response.setWidth(30),
                      top: response.setHeight(15)),
                  child: Hero(
                    tag: 'sideslame',
                    child: FaIcon(
                      FontAwesomeIcons.calendar,
                      color: Colors.black,
                      size: response.setHeight(19),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 38,
            top: response.screenHeight * 0.12,
            child: Text(
              "Growing Plan",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: response.setFontSize(35),
              ),
            ),
          ),
          Positioned(
            left: response.screenWidth * 0.23,
            bottom: 50,
            child: GrowingStatus(
              finished: true,
              date: "28.02",
              title: "Water your\nplant",
              subTitle: "3 days ago",
            ),
          ),
          Positioned(
            left: response.screenWidth * 0.23,
            bottom: 220,
            child: GrowingStatus(
              finished: true,
              date: "28.02",
              title: "Add fertilizer",
              subTitle: "2 days ago",
            ),
          ),
          Positioned(
            left: response.screenWidth * 0.23,
            bottom: 320,
            child: GrowingStatus(
              finished: true,
              date: "20.02",
              title: "Water your\nplant",
              subTitle: "1 days ago",
            ),
          ),
          Positioned(
            left: response.screenWidth * 0.23,
            bottom: 470,
            child: GrowingStatus(
              finished: false,
              date: "28.01",
              title: "Add some Light",
              subTitle: "tomorrow",
            ),
          ),
        ],
      ),
    );
  }
}
