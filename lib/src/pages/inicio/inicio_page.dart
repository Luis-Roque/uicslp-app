import 'package:flutter/material.dart';
import 'package:uicslp/src/widgets/btn_circle.dart';

class inicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            pinned: true,
            floating: false,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('assets/logo2.png',
              fit: BoxFit.contain,
              ),
            ),
            actions: [
              btnCircle(icon: Icons.supervised_user_circle_outlined,iconSize: 30.0,onPressed: ()=>{print('Buscar')},),
              btnCircle(icon: Icons.home_work_outlined,iconSize: 30.0,onPressed: ()=>{print('Buscar')},),
              btnCircle(icon: Icons.play_circle_fill_outlined,iconSize: 30.0,onPressed: ()=>{print('Buscar')},)
            ],
          ),
           SliverFillRemaining(
            child: Center(child: Text('Datos')),
          ),
        ],
      ),
    );
  }
}