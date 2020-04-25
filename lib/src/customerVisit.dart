import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomerVisit extends StatefulWidget{
  static String route= '/customer';
  _customerStatePage createState() => _customerStatePage();
}

class _customerStatePage extends State<CustomerVisit> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Customer Visit Page',
            ),
          ],
        ),
      ),
    );
  }
}