import 'package:flutter/material.dart';

class NoInternet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 236,
              child: Image.asset(
                "assets/images/noInternet.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 17, top: 26, right: 15),
              child: Text(
                "Oops, No Internet Connection",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontFamily: "Avenir",
                  fontWeight: FontWeight.w300,
                  fontSize: 24,
                  letterSpacing: -0.24,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 282,
                margin: EdgeInsets.only(top: 26),
                child: Text(
                  "Our Systems tend to sleep, When there is no internet connection, Please retry when wifi or cellular data is enabled.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 116, 138, 157),
                    fontFamily: "Avenir",
                    fontWeight: FontWeight.w300,
                    fontSize: 19,
                    letterSpacing: -0.19,
                  ),
                ),
              ),
            ),
            // Spacer(),
            
          ],
        ),
      ),
    );
  }
}