import 'package:flutter/material.dart';

class pag4_acercade extends StatefulWidget {
  const pag4_acercade({super.key});

  @override
  State<pag4_acercade> createState() => _pag4_acercadeState();
}

class _pag4_acercadeState extends State<pag4_acercade> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person_2),
            title: Text("Julio Cesar"),
            subtitle: Text("Nombres"),
          ),
          ListTile(
            leading: Icon(Icons.person_4_rounded),
            title: Text("Palacio Ojeda"),
            subtitle: Text("Apellidos"),
          ),
          ListTile(
            leading: Icon(Icons.email_rounded),
            title: Text("joulespr@gmail.com"),
            subtitle: Text("Email"),
          ),
          ListTile(
            leading: Icon(Icons.phone_android_rounded),
            title: Text("315 4257845"),
            subtitle: Text("Celular"),
          )
        ],
      ),
    );
  }
}
