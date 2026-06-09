import 'package:e_sky/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:e_sky/routes.dart';
import 'package:e_sky/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-SKY',
      theme: theme(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
