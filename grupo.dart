import 'estudiante.dart';

class Grupo {
  String? nombre;
  String? codigo;
  List<Estudiante> estudiantes = [];
  Grupo(String nombre, String codigo) {
    this.nombre = nombre;
    this.codigo = codigo;
    this.estudiantes = [];
  }
  void matricularEstudiante(Estudiante estudiante) {
    this.estudiantes.add(estudiante);
  }

  List<Estudiante> obtenerEstudiantes() {
    return this.estudiantes;
  }

  void MostrarDatosEstudiantes() {
    for (Estudiante estudiante in estudiantes) {
      print("Nombre : ${estudiante.ObtenerNombre()}");
      print("Fecha_Nacimiento ${estudiante.obtenerFechaNacimiento()}");
      print("*********************************************");
    }
  }
}
