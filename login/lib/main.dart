import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: cuerpo(),
    );
  }
}

class cuerpo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: inicio());
  }
}

Widget inicio() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://cdn.mitvstatic.com/programs/mx_shrek-para-siempre-2010_p_m.jpg"),
            fit: BoxFit.cover)),
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [nombre(), campoUsuario(), campoPassword(), botonEntrar()],
    )),
  );
}

Widget nombre() {
  return Container(
    child: Text(
      'sing in',
      style: TextStyle(fontSize: 20.0, color: Color.fromARGB(255, 245, 75, 2)),
    ),
  );
}

Widget campoUsuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
    child: TextField(
        decoration: InputDecoration(
            hintText: "logeate", fillColor: Colors.white, filled: true)),
  );
}

Widget campoPassword() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
    child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: "contraseña", fillColor: Colors.white, filled: true)),
  );
}

Widget botonEntrar() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
    child: ElevatedButton(
      onPressed: () {},
      child: Text(
        'entrar',
        style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w400),
      ),
    ),
  );
}
