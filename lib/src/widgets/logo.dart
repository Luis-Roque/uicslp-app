import 'package:flutter/material.dart';
import 'package:uicslp/src/config/Colores.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 170,
        margin: EdgeInsets.only(top:10),
        child: Column(
          children: [
            Image( image: AssetImage('assets/logo.png')),
            SizedBox(height: 10),
            Text('UICSLP', style: TextStyle(
              fontSize: 40,
              color: Colores.uicslpOrange,
              fontWeight: FontWeight.bold,
            ),),
            Center(
                child: Text('Campus Tamazunchale', style: TextStyle(
                  fontSize: 18,
                  color: Colores.uicslpBlue,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -1.5
                ),),
              ),
          ],
        ),
      ),
    );
  }
}