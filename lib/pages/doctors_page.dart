import 'package:app_medica/models/doctor.dart';
import 'package:app_medica/pages/doctor_page.dart';
import 'package:flutter/material.dart';

import 'package:pull_to_refresh/pull_to_refresh.dart';

class DoctorsPage extends StatefulWidget {
  @override
  _DoctorsPageState createState() => _DoctorsPageState();
}

class _DoctorsPageState extends State<DoctorsPage> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  final usuarios = [
    Doctor(uid: '1', nombre: 'María', especialidad: 'Dermatologo'),
    Doctor(uid: '2', nombre: 'Melissa', especialidad: 'Pediatrico'),
    Doctor(uid: '3', nombre: 'Fernando', especialidad: 'ojos'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Doctores'),
        ),
        body: SmartRefresher(
          controller: _refreshController,
          enablePullDown: true,
          onRefresh: _cargarUsuarios,
          header: WaterDropHeader(
            complete: Icon(Icons.check, color: Colors.blue[400]),
            waterDropColor: Colors.blue[400],
          ),
          child: _listViewUsuarios(),
        ));
  }

  ListView _listViewUsuarios() {
    return ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder: (_, i) => _usuarioListTile(usuarios[i]),
        separatorBuilder: (_, i) => Divider(),
        itemCount: usuarios.length);
  }

  ListTile _usuarioListTile(Doctor usuario) {
    return ListTile(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => DoctorPage()));
      },
      title: Text(usuario.nombre),
      subtitle: Text(usuario.especialidad),
      leading: CircleAvatar(
        //foto del doctor
        child: Text(usuario.nombre.substring(0, 2)),
        backgroundColor: Colors.blue[100],
      ),
      trailing: Container(
        width: 10,
        height: 10,
      ),
    );
  }

  _cargarUsuarios() async {
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }
}
