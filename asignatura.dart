import 'tema.dart';

class Asignatura {
  String? nombre;
  int? horas;
  List<Tema> temas = [];
  Asignatura(String nombre, int horas) {
    this.nombre = nombre;
    this.horas = horas;
    this.temas = [];
  }
  void modificarHoras(int horas) {
    this.horas = horas;
  }

  void agregarTema(Tema tema) {
    this.temas.add(tema);
  }

  void quitarTema(Tema tema) {
    if (this.temas.contains(tema)) {
      this.temas.remove(tema);
    }
  }

  void listarTemas() {
    for (Tema tema in temas) {
      print("Nombre : ${tema.ObtenerNombre()}");
    }
  }
}
