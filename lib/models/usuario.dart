// To parse this JSON data, do
//
//     final usuario = usuarioFromJson(jsonString);

import 'dart:convert';

Usuario usuarioFromJson(String str) => Usuario.fromJson(json.decode(str));

String usuarioToJson(Usuario data) => json.encode(data.toJson());

class Usuario {
  Usuario({
    this.estado,
    this.google,
    this.nombre,
    this.correo,
    this.rol,
    this.uid,
  });

  bool estado;
  bool google;
  String nombre;
  String correo;
  String rol;
  String uid;

  factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
        estado: json["estado"],
        google: json["google"],
        nombre: json["nombre"],
        correo: json["correo"],
        rol: json["rol"],
        uid: json["uid"],
      );

  Map<String, dynamic> toJson() => {
        "estado": estado,
        "google": google,
        "nombre": nombre,
        "correo": correo,
        "rol": rol,
        "uid": uid,
      };
}
