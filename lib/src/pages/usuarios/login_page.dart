import 'package:flutter/material.dart';
import 'package:uicslp/src/config/Colores.dart';

import 'package:uicslp/src/widgets/btn_login.dart';
import 'package:uicslp/src/widgets/custom_input.dart';
import 'package:uicslp/src/widgets/labels.dart';
import 'package:uicslp/src/widgets/logo.dart';

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colores.scaffold,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            //height: MediaQuery.of(context).size.height * .9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Logo(),
                _Form(),
                Labels(),
                Text('Términos y condiciones', style: TextStyle(fontWeight: FontWeight.w200),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {

  final correoCtrl = TextEditingController();
  final contraCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: 'Correo Institucional',
            keyboardType: TextInputType.emailAddress,
            textControler: correoCtrl,
          ),
           CustomInput(
            icon: Icons.lock_outline,
            placeholder: 'Contraseña',
            isPassword: true,
            textControler: contraCtrl,
          ),

          btnIngresar(
            text: 'Ingresar',
            onPressed: (){
              print(correoCtrl.text);
              print(contraCtrl.text);
              },
            )
        ],
      ),
    );
  }
}

