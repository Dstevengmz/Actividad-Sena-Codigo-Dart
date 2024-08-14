import 'asignatura.dart';
import 'estudiante.dart';

class Calificacion {
  Estudiante? estudiante;
  Asignatura? asignatura;
  double? nota1;
  double? nota2;
  double? notafinal;

  Calificacion(Estudiante estudiante, Asignatura asignatura, double nota1, double nota2,double notafinal)
  {
    this.estudiante=estudiante;
    this.asignatura=asignatura;
    this.nota1=nota1;
    this.nota2=nota2;
    this.notafinal=notafinal;
  }

void asignarNota1(double  nota1) {
  this.nota1 = nota1;
  }

void asignarNota2(double  nota2) {
  this.nota2 = nota2;
  }

void calcularNotaFinal() {
  notafinal = (nota1! + nota2!) / 2;
}

double? obtenerNotaFinal() {
    return notafinal; 
  }
}
