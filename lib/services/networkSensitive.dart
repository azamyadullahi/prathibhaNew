import 'package:flutter/material.dart';
import 'package:prathibha/Screens/NointernetScreen.dart';
import 'package:prathibha/Screens/WebViewScreen.dart';
import 'package:prathibha/enums/ConnectivityStatus.dart';
import 'package:provider/provider.dart';


class NetworkSensitive extends StatelessWidget {
  final double opacity;
  String url;
  NetworkSensitive({this.opacity = 0.5, this.url});

  @override
  Widget build(BuildContext context) {
    // Get our connection status from the provider
    var connectionStatus = Provider.of<ConnectivityStatus>(context);

    if (connectionStatus == ConnectivityStatus.WiFi) {
      return Webview(
        url: url,
      );
    }

    if (connectionStatus == ConnectivityStatus.Cellular) {
      return Webview(
        url: url,
      );
    }

    if (connectionStatus == ConnectivityStatus.Offline) {
      return NoInternet();
    }

    return NoInternet(); //if there is no return function here we will have errors.
  }
}