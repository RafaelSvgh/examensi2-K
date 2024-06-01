import 'package:flutter/material.dart';

Widget tarjetaMateria(String gestion, String materia, String grupo) {
  return Container(
    width: 170.0,
    height: 100.0,
    margin: const EdgeInsets.all(7.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      border: Border.all(
          color: const Color.fromARGB(224, 158, 158, 158).withOpacity(0.4)),
    ),
    child: Column(
      children: [
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Text('[$gestion] $materia - $grupo')),
        TextButton(onPressed: () {}, child: const Text('Asistencias'))
      ],
    ),
  );
}
