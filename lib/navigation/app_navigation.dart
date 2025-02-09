import 'package:flutter/material.dart';
import 'package:flutter_component_playground/navigation/app_screen_name.dart';

class AppNavigation{
  // Route onGenerateRoute(RouteSettings setting){
  //   switch(setting.name){
  //     case AppScreenName.homeScreen;
  //   }
  // }

  MaterialPageRoute<dynamic> _navigate(Widget screen) {
    return MaterialPageRoute(builder: (context) => screen);
  }
}