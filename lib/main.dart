import 'package:flutter/material.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StalessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Serviços',
      home:HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Serviço disponiveis"),
      ),
      body: ListView(
        children: [ 
          ListTile(
            title: Text("Ar Condicionado"),
            leading: Icon(Icons.ac_unit),
          ),
          ListTile(
            title: Text("Pmoc"),
            leading: Icon(Icons.all_inbox),
          ),
          ListTile(
            title: Text("Localização"),
            leading: Icon(Icons.add_location_alt),

          ),
        ],
      ),
    );
  }
}
