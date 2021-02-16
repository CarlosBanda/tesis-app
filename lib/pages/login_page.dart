import 'package:app_medica/widgets/Fondo.dart';
import 'package:app_medica/widgets/Logo.dart';
import 'package:app_medica/widgets/boton_azul.dart';
import 'package:app_medica/widgets/custom_input.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5774BA),
      body: SafeArea(
        child: Stack(
          children: [
            Fondo(),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.9,
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlatButton(
                              onPressed: () =>
                                  Navigator.pushNamed(context, 'login'),
                              child: Text(
                                'Iniciar Sesion',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 20),
                              )),
                          FlatButton(
                              onPressed: () =>
                                  Navigator.pushNamed(context, 'register'),
                              child: Text(
                                'Registrarse',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                        ],
                      ),
                      Logo(),
                      _Form(),
                      Text(
                        'Iniciar Sesion con: ',
                        style: TextStyle(color: Colors.white),
                      ),
                      FaIcon(
                        FontAwesomeIcons.google,
                        color: Color(0xffF50F0F),
                        size: 60,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
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
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: 'Correo',
            textController: emailCtrl,
            keyboardType: TextInputType.emailAddress,
          ),
          CustomInput(
              icon: Icons.lock_outline,
              placeholder: 'Contraseña',
              isPassword: true,
              textController: passCtrl),
          BotonAzul(texto: 'Iniciar Sesion', onPressed: () {}),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              'Olvido su Contraseña?',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
