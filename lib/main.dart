import 'package:flutter/material.dart';
import 'package:growing_plants_iot_app/screens/home.dart';
import 'package:response/response.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Response(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
