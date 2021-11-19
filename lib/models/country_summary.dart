import 'package:intl/intl.dart';

class CountrySummaryModel {
  final String country;
  final int confirmed;
  final int death;
  final int recovered;
  final int active;
  final DateTime date;

  CountrySummaryModel(this.country, this.confirmed, this.death, this.recovered,
      this.active, this.date);

  factory CountrySummaryModel.fromJson(Map<String, dynamic> json) {
    if (json["fecha_diagnostico"] != null) {
      var input =
          DateFormat('dd/MM/yyyy HH:mm').parse(json["fecha_diagnostico"]);
      var output = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").format(input);

      return CountrySummaryModel(
          json["ciudad_municipio"],
          int.parse(json["casos"]),
          int.parse(json["fallecidos"]),
          int.parse(json["recuperados"]),
          int.parse(json["activos"]),
          DateTime.parse(output));
    } else {
      return CountrySummaryModel(
          json["ciudad_municipio"],
          int.parse(json["casos"]),
          int.parse(json["fallecidos"]),
          int.parse(json["recuperados"]),
          int.parse(json["activos"]),
          DateTime.now());
    }
  }
}
