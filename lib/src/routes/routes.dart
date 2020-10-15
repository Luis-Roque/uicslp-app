import 'package:flutter/material.dart';
import 'package:uicslp/src/pages/inicio/home_page.dart';


final Map<String, Widget Function(BuildContext)> appRoutes ={

  'home' : ( _ )=> homePage(),
};