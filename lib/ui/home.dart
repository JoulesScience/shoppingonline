import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/controlador/controladorGeneral.dart';
import 'package:reto2/ui/menu.dart';
import 'package:reto2/ui/pag1_inicio.dart';
import 'package:reto2/ui/pag2_comprar.dart';
import 'package:reto2/ui/pag3_misproductos.dart';
import 'package:reto2/ui/pag4_acerdade.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Reto 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Shopping Amazon Premium'),
      debugShowCheckedModeBanner: false,
    );
  }
}

List paginas = [
  pag1_inicio(),
  pag2_comprar(),
  pag3_misproductos(),
  pag4_acercade()
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  controladorGeneral Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: menu(),
      body: Obx(() => paginas[Control.posicionPagina]),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
