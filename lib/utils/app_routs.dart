
import 'package:advance_exam/screen/home/view/home_screen.dart';
import 'package:advance_exam/screen/splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';

Map<String,WidgetBuilder>app_routs={
   "/":(context) => SplashScreen(),
  "home":(context) => HomeScreen(),

};