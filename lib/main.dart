import 'package:flutter/material.dart';
import 'package:uicslp/src/config/Colores.dart';
import 'package:uicslp/src/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colores.uicslpBlue
      ),
      title: 'UICSLP',
      initialRoute: 'home',
      routes: appRoutes,
    );
  }
}