import 'package:flutter/material.dart';

Widget horarioDocente(
    String fecha, String horaInicio, String horaFin, dynamic estado) {
  bool check = false;
  if (estado == '1') {
    check = true;
  }
  return SwitchListTile(
    value: check,
    onChanged: (value) {},
    title: Text(fecha),
    subtitle: Text('$horaInicio - $horaFin'),
  );
}
