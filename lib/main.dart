import 'package:flutter/material.dart';
import 'package:flutter_state_singleton/pages/pagina1_page.dart';
import 'package:flutter_state_singleton/pages/pagina2_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'pagina1',
      routes: {
        'pagina1': (_) => Pagina1Page(),
        'pagina2': (_) => Pagina2Page(),
      },
    );
  }
}
