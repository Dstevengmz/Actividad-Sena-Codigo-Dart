import 'Salon.dart';
import 'presencial.dart';

class HorarioClase {
  String? dia;
  int? horaInicio;
  int? horaFinal;
  Presencial? clase;
  Salon? salon;

  HorarioClase(String dia, int horaInicio, int horaFinal, Presencial clase,
      Salon salon) {
    this.dia = dia;
    this.horaInicio = horaInicio;
    this.horaFinal = horaFinal;
    this.clase = clase;
    this.salon = salon;
  }

  String? obtenerDia() {
    return dia;
  }

  int? obtenerHorarioInicio() {
    return horaInicio;
  }

  int? obtenerHoraFinal() {
    return horaFinal;
  }
}
