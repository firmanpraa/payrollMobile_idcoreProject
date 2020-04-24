import 'package:flutter/material.dart';
import 'homepage.dart';

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff00317C),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Image.asset(
              "images/payrollLogo.png",
              width: 200.0,
              height: 100.0,
            ),
            SizedBox(
              height: 30,
            ),
            new Container(
              color: Color(0xff003994),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 10.0),
                    child: new Text(
                      "EMPLOYEE SELF SERVICE",
                      style: new TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              color: Color(0xff003B99),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 0.0),
                    child: new TextField(
                      decoration: new InputDecoration(
                          labelText: 'Employee Main Number (NIK)',
                          labelStyle: new TextStyle(color: Colors.white)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 0.0),
                    child: new TextField(
                      obscureText: true,
                      decoration: new InputDecoration(
                          labelText: 'Password',
                          labelStyle: new TextStyle(color: Colors.white)),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                   Stack(
                      children: <Widget>[
                        Container(
                          color: Color(0xff77A5F8),
                          height: 150,
                        ),
                        Container(
                          color: Color(0xff003B99),
                          height: 50,
                        ),
                        new Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 20.0)),
                                Container(
                                  height: 50,
                                  width: 350,
                                  child: RaisedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => HomePage()),
                                      );
                                    },
                                    color: Color(0xff0051FF),
                                    shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(50.0)),
                                    child: new Text('Sign In',
                                        style: new TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),

                              ],
                            )
                        ),
                      ],
                    ),
                ],
              ),
            ),
            new Container(
              color: Color(0xff003B99),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    'Don\'t have an account ?',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => null));
                    },
                    child: Text(
                      'Contact Us',
                      style: TextStyle(
                          color: Color(0xfff79c4f),
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
