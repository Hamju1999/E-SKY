import 'package:flutter/material.dart';
import 'package:e_sky/screens/splash/components/body.dart';
import 'package:e_sky/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
