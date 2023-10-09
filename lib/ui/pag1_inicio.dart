import 'package:flutter/material.dart';

class pag1_inicio extends StatefulWidget {
  const pag1_inicio({super.key});

  @override
  State<pag1_inicio> createState() => _pag1_inicioState();
}

class _pag1_inicioState extends State<pag1_inicio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image(
            image: NetworkImage(
                "https://static.wixstatic.com/media/9c8ae8_bb691308613848e88a41738eed5ab056~mv2.jpg/v1/fit/w_2500,h_1330,al_c/9c8ae8_bb691308613848e88a41738eed5ab056~mv2.jpg")),
      ),
    );
  }
}
