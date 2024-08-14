import 'Salon.dart';
import 'asignatura.dart';
import 'calificacion.dart';
import 'estudiante.dart';
import 'grupo.dart';
import 'horario.dart';
import 'plataforma.dart';
import 'presencial.dart';
import 'tema.dart';
import 'virtual.dart';

void main() {
  var salon205 = Salon(205);
  var salon206 = Salon(206);
  var claseCalculo = Presencial(
    "Cálculo I",
    "MAT101",
    4,
  );

  var horarioCalculoMiercoles = HorarioClase(
    "Lunes",
    10,
    15,
    claseCalculo,
    salon205,
  );

  var horarioCalculoLunes = HorarioClase(
    "Martes",
    07,
    13,
    claseCalculo,
    salon206,
  );

  claseCalculo.agregarHorario(horarioCalculoMiercoles);
  claseCalculo.agregarHorario(horarioCalculoLunes);

  print("Clase: ${claseCalculo.nombre} (${claseCalculo.horas} horas)");
  print("Libro: ${claseCalculo.obtenerLibro()}");
  print("#################################################################");
  print("Salón: ${claseCalculo.horas}");
  print(
      "##########################Salon#######################################");
  for (var horario in claseCalculo.horarios) {
    print(
        "Horario: ${horario.obtenerDia()}, ${horario.obtenerHorarioInicio()}-${horario.obtenerHoraFinal()}");
  }
  print("#################################################################");
//Codigo Clase :

  Grupo adso = Grupo("ADSO", "2874057");
  Grupo cocina = Grupo("COCINA", "2870097");

//Crear estudiantes

  Estudiante est1 = Estudiante("Pedro rojas", DateTime(1980, 6, 6));
  Estudiante est2 = Estudiante("Monik Galindo", DateTime(1999, 12, 15));
  Estudiante est3 = Estudiante("Gloria Pineda", DateTime(2005, 9, 9));
  Estudiante est4 = Estudiante("Erika Galindo", DateTime(2000, 1, 1));

//Realizar Tareas de los objetos

  adso.matricularEstudiante(est1);
  adso.matricularEstudiante(est2);
  cocina.matricularEstudiante(est3);
  cocina.matricularEstudiante(est4);
  adso.MostrarDatosEstudiantes();
  cocina.MostrarDatosEstudiantes();

//Crear un objeto de tipo plataforma

  Plataforma teams = Plataforma("Micropsoft teams");
  Virtual asignatura1 = Virtual("https://unimayor.edu.co", teams, "POO", 200);
//Crear un Tema
  Tema tema1 = Tema("Prinicipios de la POO", 10);

  asignatura1.agregarTema(tema1);

  print(asignatura1.obtenerUrl());
  asignatura1.listarTemas();
  print("#################################################################");

  print("#################################################################");
  var asignatura = Asignatura('Matemáticas', 4);
  var calificacion = Calificacion(est1, asignatura, 85.5, 92.0, 0);
  calificacion.calcularNotaFinal();
  print('Nombre del estudiante: ${est1.nombre}');
  print(
      'Nota final en ${asignatura.nombre}: ${calificacion.obtenerNotaFinal()}');
  print("#################################################################");
}
