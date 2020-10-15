import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:uicslp/src/config/Colores.dart';

import 'package:uicslp/src/pages/inicio/calendario_page.dart';
import 'package:uicslp/src/pages/inicio/carrera_page.dart';
import 'package:uicslp/src/pages/inicio/inicio_page.dart';
import 'package:uicslp/src/pages/usuarios/login_page.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int pageIndex = 0;

  //Páginas
  final inicioPage _inicio = new inicioPage();
  final carreraPage _carreras = new carreraPage();
  final calendarioPage _calendario = new calendarioPage();
  final loginPage _login = new loginPage();

  Widget _showPage = new inicioPage();

  Widget _pageElegida(int page){
    switch(page){
      case 0:
        return _inicio;
        break;
      case 1:
        return _carreras;
        break;
      case 2:
        return _calendario;
        break;
      case 3:
        return _login;
        break;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UICSLP | Campus Tamazunchale', style: TextStyle(
            letterSpacing: -1.2,
            fontWeight: FontWeight.bold
          ),),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          //key: _bottomNavigationKey,
          index: pageIndex,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.home,color: Colors.white, size: 30),
            Icon(Icons.school,color: Colors.white, size: 30),
            Icon(Icons.calendar_today,color: Colors.white, size: 30),
            Icon(Icons.person_outline,color: Colors.white, size: 30),

          ],
          color: Colores.uicslpBlue,
          buttonBackgroundColor: Colores.uicslpOrange,
          backgroundColor: Colores.uicslpBlue,
          animationCurve: Curves.easeInOutCirc,
          animationDuration: Duration(milliseconds: 600),
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = _pageElegida(tappedIndex);
            });
          },
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: _showPage,
          ),
        )
    );
  }
}