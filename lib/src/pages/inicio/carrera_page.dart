import 'package:flutter/material.dart';

class carreraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Servicios', style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
          fontSize: 23.0,
        ),
        ),
        elevation: 0.0,
      ),
      body: Center(
        child: Text('Carreras'),
      ),
    );
  }
}