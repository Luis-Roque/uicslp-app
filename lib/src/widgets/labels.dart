import 'package:flutter/material.dart';
import 'package:uicslp/src/config/Colores.dart';

class Labels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('¿No puedes acceder?', style: TextStyle(color: Colors.black54,fontSize: 15,
          fontWeight: FontWeight.w300),),
          SizedBox(height: 10,),
          Text('Comunicate en control escolar',style: TextStyle(color:Colores.uicslpOrange, fontSize: 18, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}