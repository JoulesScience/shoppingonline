import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/controlador/controladorGeneral.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  controladorGeneral Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.lightBlue),
                child: UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://previews.123rf.com/images/pshonka/pshonka2105/pshonka210500459/173996229-compras-de-tel%C3%A9fonos-m%C3%B3viles-o-compras-en-l%C3%ADnea-con-icono-de-glifo-blanco-de-vector-plano-de-carro.jpg")),
                    accountName: Text("Julio Cesar Palacio"),
                    accountEmail: Text("joulesprcorp@gmail.com"))),
            Divider(),
            Expanded(
                child: ListView(children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Inicio"),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(0);
                },
              ),
              ListTile(
                leading: Icon(Icons.money_off_csred_outlined),
                title: Text("Comprar"),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(1);
                },
              ),
              ListTile(
                leading: Icon(Icons.shopify),
                title: Text("Mis Productos"),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(2);
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Acerca de..."),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(3);
                },
              )
            ]))
          ],
        ),
      ),
    );
  }
}
