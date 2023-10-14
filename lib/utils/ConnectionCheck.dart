import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ConnectionCheck {
  Future<bool> checkConnection() async {

    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {

        return true;
      } else {
        Fluttertoast.showToast(
            msg: "Internet Connection failed!",
            toastLength: Toast.LENGTH_SHORT,
            timeInSecForIosWeb: 1,
            backgroundColor: Color(0xFFfee400),
            textColor: Colors.white,
            fontSize: 16.0);

        return false;
      }
    } on SocketException catch (_) {

      Fluttertoast.showToast(
          msg: "Internet Connection failed!!",
          toastLength: Toast.LENGTH_SHORT,
          timeInSecForIosWeb: 1,
          backgroundColor: Color(0xFFfee400),
          textColor: Colors.white,
          fontSize: 16.0);

      return false;

    }
  }
}
