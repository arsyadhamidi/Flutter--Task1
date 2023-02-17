import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splashscreen1/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void splasScreenLogin(){
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context)=>LoginPage()));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splasScreenLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Spacer(),
            Center(
              child: Image.asset("assets/images/logo.png"),
            ),
            Spacer(),
            Text("Udacoding", style: TextStyle(fontSize: 28),),
        ],
      ),
    );
  }
}


