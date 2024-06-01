import 'package:examen2/src/pages/docente_pages/docente_materias_page.dart';
import 'package:examen2/src/pages/docente_pages/docente_perfil_page.dart';
import 'package:examen2/src/pages/login/login_page.dart';
import 'package:examen2/src/widgets/datos_usuario.dart';
import 'package:examen2/src/widgets/materia_card.dart';
import 'package:flutter/material.dart';

class DocentePage extends StatefulWidget {
  const DocentePage({super.key});

  @override
  State<DocentePage> createState() => _DocentePageState();
}

class _DocentePageState extends State<DocentePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      const DocentePage(),
      const DocentePerfilPage(),
      const DocenteMateriasPage(),
      const LoginPage()
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Docente'),
        centerTitle: true,
      ),
      drawer: NavigationDrawer(
        onDestinationSelected: (value) {
          setState(() {
            index = value;
          });
          final item = pages[index];
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => item));
        },
        children: [
          datosDeUsuario('docente@universidad.edu', 'Salvatierra Valle Rafael'),
          const NavigationDrawerDestination(
              icon: Icon(Icons.home), label: Text('Inicio')),
          const NavigationDrawerDestination(
              icon: Icon(Icons.account_circle), label: Text('Perfil')),
          const NavigationDrawerDestination(
              icon: Icon(Icons.auto_stories), label: Text('Materias')),
          const SizedBox(
            height: 200.0,
          ),
          const NavigationDrawerDestination(
              icon: Icon(Icons.logout), label: Text('Cerrar Sesión')),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Materias',
              style: TextStyle(fontSize: 18.0),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 15.0),
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: [
                  tarjetaMateria('2-2024', 'Programación II', 'SB'),
                  tarjetaMateria(
                      '2-2024', 'Introducción a la Informática', 'Z2'),
                  tarjetaMateria('2-2024', 'Programación I', 'SA'),
                  tarjetaMateria('2-2024', 'Base de Datos I', 'SA'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
