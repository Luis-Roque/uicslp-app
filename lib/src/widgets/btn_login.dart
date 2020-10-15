import 'package:flutter/material.dart';
import 'package:uicslp/src/config/Colores.dart';

class btnIngresar extends StatelessWidget {

  final String text;
  final Function onPressed;

  const btnIngresar({
    Key key, 
    @required this.text, 
    @required this.onPressed
    }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
            elevation: 2,
            highlightElevation: 5,
            color: Colores.uicslpOrange,
            shape: StadiumBorder(),
            onPressed: this.onPressed,
            child: Container(
              width: double.infinity,
              height: 55,
              child: Center(
                child: Text(this.text, style: TextStyle(color: Colors.white, fontSize: 17)),
              ),
            ),
            );
  }
}