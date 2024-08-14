class Estudiante {
  String? nombre;
  DateTime? fechanacimiento;

  Estudiante(String nombre, DateTime fechanacimiento) {
    this.nombre = nombre;
    this.fechanacimiento = fechanacimiento;
  }
  String? ObtenerNombre() {
    return this.nombre;
  }

  DateTime? obtenerFechaNacimiento() {
    return this.fechanacimiento;
  }

  void asignNnombre(String Nombre) {
    this.nombre = nombre;
  }

  void asignarFechaNacimiento(DateTime fechanacimiento) {
    this.fechanacimiento = fechanacimiento;
  }
}
