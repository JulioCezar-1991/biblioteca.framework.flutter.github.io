import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  startTime() async {
    Future.delayed(Duration(seconds: 5)).then((v) {
      Modular.to.pushReplacementNamed('/home');
    });
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    Orientation _orin = MediaQuery.of(context).orientation;

    return Scaffold(
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _orin == Orientation.portrait
                ? Column(
                    children: <Widget>[
                      FlutterLogo(
                          style: FlutterLogoStyle.horizontal,
                          size: _size.width / 1.5),
                      SizedBox(
                        height: _size.height / 4,
                      ),
                      LinearProgressIndicator(
                        backgroundColor:
                            Theme.of(context).primaryColor.withOpacity(0.8),
                      ),
                      SizedBox(
                        height: _size.height / 10,
                      ),
                      CircularProgressIndicator(
                        strokeWidth: 5,
                        backgroundColor:
                            Theme.of(context).primaryColor.withOpacity(0.8),
                      ),
                    ],
                  )
                : Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/flutterSplash02.png',
                        width: _size.width / 1,
                      ),
                      SizedBox(
                        height: _size.height / 8,
                      ),
                      CircularProgressIndicator(
                        strokeWidth: 5,
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}
