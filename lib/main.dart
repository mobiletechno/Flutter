import 'package:flutter/material.dart';
import 'package:rajkumar_flutter_app/screens/Home.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Flutter ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: PageHome()
      home: ImageSplashScreen(), debugShowCheckedModeBanner: false,
    );
  }
}

class ImageSplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<ImageSplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    // Navigator.of(context).pushReplacementNamed(Home);
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    //Navigator.pushReplacementNamed(context, Home());
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset(
              'assets/creater.jpg',
              fit: BoxFit.cover,
              width: 400,
              height: 400,
            ),
            Text('RAJ KUMAR',
                style: TextStyle(color: Colors.white, fontSize: 40)),
            Text('mobile application developer',
                style: TextStyle(color: Colors.white, fontSize: 20))
          ],
        ),
      ),
    );
  }
}
