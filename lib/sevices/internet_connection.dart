import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:overlay_support/overlay_support.dart';

class Internet {
  bool connected = false;

  checkInternetCon() async {
    connected = await InternetConnectionChecker().hasConnection;
    // final msg =
    //     connected ? "CONNECTED TO INTERNET" : "NO CONNECTED TO INTERNET";
    final msg = connected ? "Internet Connected" : "No Internet Connetion";

    showSimpleNotification(Text(msg));
  }
}
