import 'package:e_sky/screens/intro_page.dart';
import 'package:e_sky/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:e_sky/screens/complete_profile/complete_profile_screen.dart';
import 'package:e_sky/screens/forgot_password/forgot_password_screen.dart';
import 'package:e_sky/screens/home/home_screen.dart';
import 'package:e_sky/screens/otp/otp_screen.dart';
import 'package:e_sky/screens/sign_in/sign_in_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';


// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  IntroPage.routeName: (context) => IntroPage(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
