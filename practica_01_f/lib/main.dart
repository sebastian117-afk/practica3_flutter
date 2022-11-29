import 'package:flutter/material.dart';

void main() => runApp(const MyApp());
List<Persona> personas = [
  Persona("Sebastian", "Chocoteco", "20174640"),
  Persona("Geovani", "Cardenas", "20172752"),
  Persona("George", "Chavez", "20144146"),
  Persona("carlos", "alberto", "20224641")
];
final nom = TextEditingController();
final ape = TextEditingController();
final cue = TextEditingController();

String tnom = '';
String tape = '';
String tcue = '';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: MiPagina1(),
    );
  }
}

class MiPagina1 extends StatefulWidget {
  @override
  State<MiPagina1> createState() => _MiPagina1State();
}

class _MiPagina1State extends State<MiPagina1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi primer Flutter'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.people_alt_outlined),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => MiPagina2()));
        },
      ),
      body: ListView.builder(
        itemCount: personas.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(personas[index].name + '  ' + personas[index].lastName),
            subtitle: Text(personas[index].cuenta),
            leading: CircleAvatar(
              child: Text(personas[index].name.substring(0, 1)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        },
      ),
    );
  }
}

class MiPagina2 extends StatefulWidget {
  @override
  State<MiPagina2> createState() => _MiPagina2State();
}

class _MiPagina2State extends State<MiPagina2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar alumno'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: TextField(
                controller: nom,
                decoration: InputDecoration(
                    hintText: 'Nombre', filled: true, fillColor: Colors.white),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              child: TextField(
                controller: ape,
                decoration: InputDecoration(
                    hintText: 'Apellidos',
                    filled: true,
                    fillColor: Colors.white),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              child: TextField(
                controller: cue,
                decoration: InputDecoration(
                    hintText: 'No. Cuenta',
                    filled: true,
                    fillColor: Colors.white),
              ),
            ),
            SizedBox(height: 50.0),
            // Container(
            MaterialButton(
              minWidth: 100.9,
              height: 40.0,
              onPressed: () {
                tnom = nom.text;
                tape = ape.text;
                tcue = cue.text;
                personas.add(Persona(tnom, tape, tcue));
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => MiPagina1()));
              },
              color: Colors.green,
              child: Text('Guardar', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

class Persona {
  String name;
  String lastName;
  String cuenta;
  Persona(this.name, this.lastName, this.cuenta);
}
