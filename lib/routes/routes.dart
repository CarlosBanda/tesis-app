import 'package:app_medica/pages/doctor_page.dart';
import 'package:app_medica/pages/home_page.dart';
import 'package:app_medica/pages/loadin_page.dart';
import 'package:app_medica/pages/login_page.dart';
import 'package:app_medica/pages/register_page.dart';
import 'package:app_medica/widgets/menu.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'login': (_) => LoginPage(),
  'register': (_) => RegisterPage(),
  'home': (_) => HomePage(),
  'menu': (_) => MenuPage(),
  'doctor': (_) => DoctorPage(),
  'loading': (_) => LoadinPage()
};
