import 'package:app_medica/pages/chat_page.dart';
import 'package:app_medica/pages/doctors_page.dart';
import 'package:app_medica/pages/maps_page.dart';
import 'package:app_medica/pages/perfil_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _callPage(currentIndex),
      bottomNavigationBar: _crearBottom(),
    );
  }

  Widget _callPage(int paginaActual) {
    switch (paginaActual) {
      case 0:
        return DoctorsPage();
      case 1:
        return ChatPage();
      case 2:
        return MapsPage();
      case 3:
        return PerfilPage();

      default:
        return DoctorsPage();
    }
  }

  Widget _crearBottom() {
    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.red,
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.userMd),
            label: 'Doctores',
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.comments),
            label: 'chat',
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.hospital),
            label: 'Hospitales',
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.userAlt),
            label: 'Perfil',
            backgroundColor: Colors.blue),
      ],
    );
  }
}
