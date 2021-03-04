import 'package:app_medica/pages/login_page.dart';
import 'package:app_medica/services/auth_services.dart';
import 'package:app_medica/widgets/menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoadinPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: checkLoginState(context),
      builder: (context, snapshot) {
        return Center(
          child: Text('Hola Mundo'),
        );
      },
    ));
  }

  Future checkLoginState(BuildContext context) async {
    final authServices = Provider.of<AuthServices>(context, listen: false);

    final autenticado = await authServices.isLoggeIn();

    if (autenticado) {
      // Navigator.pushReplacementNamed(context, 'menu');
      Navigator.pushReplacement(
          context,
          PageRouteBuilder(
              pageBuilder: (_, __, ___) => MenuPage(),
              transitionDuration: Duration(milliseconds: 0)));
    } else {
      Navigator.pushReplacement(
          context,
          PageRouteBuilder(
              pageBuilder: (_, __, ___) => LoginPage(),
              transitionDuration: Duration(milliseconds: 0)));
    }
  }
}
