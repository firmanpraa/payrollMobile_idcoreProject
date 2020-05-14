import 'package:flutter/material.dart';
import 'package:flutterapppayrollauth/ui/attendance.dart';
import 'package:flutterapppayrollauth/ui/claimApply.dart';
import 'package:flutterapppayrollauth/ui/customerVisit.dart';
import 'package:flutterapppayrollauth/ui/homepage.dart';
import 'package:flutterapppayrollauth/ui/leaveApply.dart';
import 'package:flutterapppayrollauth/ui/loadingPage.dart';
import 'package:flutterapppayrollauth/ui/loginPage.dart';
import 'package:flutterapppayrollauth/ui/message.dart';
import 'package:flutterapppayrollauth/ui/overtimeApply.dart';


void main(List<String> args) {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => LoadingPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/attendance': (context) => Attendance(),
        '/customer': (context) => CustomerVisit(),
        '/leave': (context) => LeaveApply(),
        '/overtime': (context) => OvertimeApply(),
        '/claim': (context) => ClaimApply(),
        '/message': (context) => Message()
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Payroll Mobile',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
    );
  }
}
