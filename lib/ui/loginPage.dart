import 'package:flutter/material.dart';
import 'package:flutterapppayrollauth/core/services/auth_services.dart';
import 'package:flutterapppayrollauth/core/utils/toast_utils.dart';
import 'package:flutterapppayrollauth/ui/widget/input_field.dart';
import 'package:flutterapppayrollauth/ui/widget/primary_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var nikController = TextEditingController();
  var passwordController = TextEditingController();

  bool isLogin = false;

  savePref(String nik, String password) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      pref.setString('nik', nik);
      pref.setString('password', password);
    });
  }

  getPref() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    final nik = pref.getString('nik');
    if (nik != null) {
      Navigator.pushNamedAndRemoveUntil(
          context, '/home', (Route<dynamic> routes) => false);
    }
  }

  void initState() {
    super.initState();
    _cekLogin();
  }

  Future _cekLogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    if (pref.getBool("isLogin")) {
      Navigator.pushNamedAndRemoveUntil(
          context, '/home', (Route<dynamic> routes) => false);
    } else {}
  }

  Future<void> prosesLogin() async {
    if (nikController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      Map<String, dynamic> data = {
        "nik": nikController.text,
        "password": passwordController.text
      };

      var response = await AuthServices.login(data);
<<<<<<< HEAD
      if (response != null) {
=======
      if(response != null){
>>>>>>> ec6c7691433b412cebc8f763bbd75059bf2cd833
        if (response.codeRespon == 200 && response.token != null) {
          SharedPreferences pref = await SharedPreferences.getInstance();
          pref.setBool("isLogin", true);
          pref.setString("token", response.token);
          ToastUtils.show("Cek Login..");
          Navigator.pushNamedAndRemoveUntil(
              context, '/home', (Route<dynamic> routes) => false);
//          iki dipindah
<<<<<<< HEAD

          ToastUtils.show("Selamat Datang");
        } else {
          SharedPreferences pref = await SharedPreferences.getInstance();
          pref.setBool("isLogin", false);
//          toast error nik pasword salah
          ToastUtils.show("Silahkan cek nik/password");
        }
      } else {
        SharedPreferences pref = await SharedPreferences.getInstance();
        pref.setBool("isLogin", false);
//        error koneksi toast
        ToastUtils.show("Koneksi error");
=======
          ToastUtils.show("Cek Login..");
          ToastUtils.show("Selamat Datang");
        } else {
//          toast error nik pasword salah
          ToastUtils.show("Silahkan cek nik/password");
        }
      }else{
//        error koneksi toast
>>>>>>> ec6c7691433b412cebc8f763bbd75059bf2cd833
      }
    } else {
      ToastUtils.show("Silahkan mengisi nik/passwrod ");
    }
  }

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
              height: 50,
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
                          fontSize: 15.0,
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
                  InputField(
                      action: TextInputAction.done,
                      type: TextInputType.number,
                      controller: nikController,
                      hintText: "Masukkan NIK",
                      labelText: "Employee Main Number (NIK)"),
                  InputField(
                    action: TextInputAction.done,
                    type: TextInputType.number,
                    controller: passwordController,
                    hintText: "Masukkan password",
                    labelText: "Password",
                    secureText: true,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        color: Color(0xff77A5F8),
                        height: 130,
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
                              width: 300,
                              child: PrimaryButton(
                                  color: Color(0xff0051FF),
                                  text: 'Sign In',
                                  onClick: () {
                                    prosesLogin();
                                  })),
                        ],
                      )),
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
                    height: 70,
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
