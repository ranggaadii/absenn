import 'dart:async';

import 'package:flutter/material.dart';

import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    // ignore: prefer_const_constructors
    var duration = Duration(seconds: 3);
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
    return Scaffold(
      // ignore: prefer_const_constructors
      backgroundColor: Color(0xffFFFFFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              child: Text(
                "ABSEN APP",
                style: TextStyle(
                    color: Color.fromRGBO(34, 87, 126, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    fontFamily: 'Poppins'),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 10.0),
              child: Image.asset(
                'assets/images/grafika.png',
                width: 300.0,
                height: 200.0,
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            //   child: Text(
            //     "APP",
            //     style: TextStyle(
            //         color: Colors.black,
            //         fontWeight: FontWeight.bold,
            //         fontSize: 35,
            //         fontFamily: 'Poppins'),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
