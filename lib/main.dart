import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:sds/View/Login.dart';

void main() {
  runApp(
    MaterialApp(
      home: splash(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(


        seconds: 5,
        navigateAfterSeconds: new login(),
        imageBackground: AssetImage( 'assets/images/backL.png'),
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.red);
    ;
  }
}
