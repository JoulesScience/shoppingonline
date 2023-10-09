import 'package:get/get.dart';
import '../clases/productos.dart';

class controladorGeneral extends GetxController {
  final _posicionPagina = 0.obs;
  final pro = <productos>[].obs;

  @override
  void onInit() {
    pro.add(productos(
        1,
        "Tennis Adidas",
        "https://assets.adidas.com/images/w_1880,f_auto,q_auto/421756b633a84c3580a4ae8901801435_9366/GW9196_01_standard.jpg",
        0,
        160000));
    pro.add(productos(
        2,
        "Asics Zapatillas",
        "https://assets.adidas.com/images/w_1880,f_auto,q_auto/421756b633a84c3580a4ae8901801435_9366/GW9196_01_standard.jpg",
        0,
        180000));
    pro.add(productos(
        3,
        "Tennis Wilson Kaos",
        "https://i.ebayimg.com/images/g/YQ8AAOSwMexkZkPF/s-l1600.jpg",
        0,
        160000));
    pro.add(productos(
        4,
        "Tennis Pumma",
        "https://assets.adidas.com/images/w_1880,f_auto,q_auto/421756b633a84c3580a4ae8901801435_9366/GW9196_01_standard.jpg",
        0,
        450000));
    pro.add(productos(
        5,
        "Tennis New Balance",
        "https://i0.wp.com/encordadosyraquetas.com/wp-content/uploads/2023/04/CALZADO-NEW-BALANCE-969-V5-VERDE-1.jpg",
        0,
        354000));

    // TODO: implement onInit
    super.onInit();
  }

  void cambiarposicion(int x) {
    _posicionPagina.value = x;
  }

  int get posicionPagina => _posicionPagina.value;

  void cambiarCantidad(int posicion, int valor) {
    print("posicion =" + posicion.toString() + " valor = " + valor.toString());
    pro[posicion].cantidad = valor;
  }

  int calcularTotal() {
    int total = 0;
    for (int i = 0; i < pro.length; i++) {
      total = total + pro[i].cantidad * pro[i].precio;
    }
    return total;
  }

  void limpiarTodo() {
    for (int i = 0; i < pro.length; i++) {
      pro[i].cantidad = 0;
    }
    calcularTotal();
  }
}
