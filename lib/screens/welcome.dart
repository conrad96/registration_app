import '../main.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'login.dart';

class Welcome extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(
        child: new SplashScreen(
          seconds: 20,
          navigateAfterSeconds: new AfterSplash(),
          image: new Image.asset('assets/images/my_company.png'),
          backgroundColor: Colors.redAccent.shade200,
          styleTextUnderTheLoader: new TextStyle(),
          photoSize: 200.0,
          loaderColor: Colors.white
        ),
      ),
      resizeToAvoidBottomPadding: false
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
      title: Center(
        child:new Text("Portal") ,
      ),
      automaticallyImplyLeading: false
      ),
      body:LoginScreen(),
      resizeToAvoidBottomPadding: false
    );
  }
}