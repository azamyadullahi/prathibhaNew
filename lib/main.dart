import 'package:flutter/material.dart';
import 'package:prathibha/services/connectivity_status.dart';
import 'package:prathibha/services/networkSensitive.dart';
import 'package:provider/provider.dart';

import 'enums/ConnectivityStatus.dart';

String url = "http://owlbridge.in/mobile/";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<ConnectivityStatus>(
      //I am using old version of provider package because i need builder function to execute.
      builder: (context) => ConnectivityService().connectionStatusController,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Prathibha',
        theme: ThemeData.dark(),
        home: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
          child: NetworkSensitive(
          url: url,
         //This is responsible for handling whether the app has internet or not.
        //Ref Link: https://www.filledstacks.com/post/make-your-flutter-app-network-aware-using-provider-and-connectivity-status/
      ),
    );
  }
}
