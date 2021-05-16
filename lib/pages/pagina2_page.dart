import 'package:flutter/material.dart';
import 'package:flutter_state_singleton/models/usuario.dart';
import 'package:flutter_state_singleton/services/usuario_services.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: StreamBuilder(
            stream: usuarioService.usuarioStream,
            builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot) {
              return snapshot.hasData
                  ? Text('Nombre: ${snapshot.data.nombre}')
                  : Text('Pagina 2');
            },
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                child: Text(
                  'Establecer usuario',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {
                  final nuevoUsuario = new Usuario(
                    nombre: 'Lucas Suarez',
                    edad: 26,
                  );
                  usuarioService.cargarUsuario(nuevoUsuario);
                },
              ),
              MaterialButton(
                child: Text(
                  'Cambiar edad',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {
                  usuarioService.cambiarEdad(20);
                },
              ),
              MaterialButton(
                child: Text(
                  'Add Profesion',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {},
              )
            ],
          ),
        ));
  }
}
