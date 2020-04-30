import 'package:flutter/material.dart';
import 'package:flutterapppayrollauth/src/loginPage.dart';
import 'dart:async';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return LoginPage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff00317C),
      body: Center(
        child: Container(
          child: Column(children: <Widget>[
            SizedBox(
              height: 200,
            ),
            Image.asset(
              "images/payrollLogo.png",
              width: 200.0,
              height: 100.0,
            ),
            SizedBox(
              height: 200,
            ),
            Text(
              '... Loading ...',
              style: TextStyle(
                  fontFamily: 'OpenSans', fontWeight: FontWeight.bold, color: Colors.white),
            )
          ]),
        ),
      ),
    );
  }
}
