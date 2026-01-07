

import 'dart:async';

import 'package:blocc/config/routes/routes_name.dart';
import 'package:flutter/cupertino.dart';

class SplashServices{

  void isLogin(BuildContext context){
    Timer(Duration(seconds: 3),
            ()=> Navigator.pushNamedAndRemoveUntil(context, RoutesName.loginScreen, (route)=>false));
  }
}