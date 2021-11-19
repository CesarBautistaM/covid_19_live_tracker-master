import 'package:http/http.dart' as http;
import "package:collection/collection.dart";
import 'dart:convert';

import '../models/global_summary.dart';
import '../models/country_summary.dart';
import '../models/country.dart';

class CovidService {
  Future<GlobalSummaryModel> getGlobalSummary() async {
    final data = await http.Client().get("https://api.covid19api.com/summary");

    if (data.statusCode != 200) throw Exception();

    GlobalSummaryModel summary =
        new GlobalSummaryModel.fromJson(json.decode(data.body));

    return summary;
  }

  Future<List<CountrySummaryModel>> getCountrySummary(String slug) async {
    final data = await http.Client().get(
        r"https://www.datos.gov.co/resource/gt2j-8ykr.json?$group=ciudad_municipio, fecha_diagnostico&$select=fecha_diagnostico, ciudad_municipio,COUNT(*) as casos, SUM(CASE(recuperado LIKE '%25allecido%25', 1, true, 0)) AS fallecidos, SUM(CASE(recuperado LIKE '%25ecuperado%25', 1, true, 0)) AS recuperados, SUM(CASE(recuperado LIKE '%25ctivo%25', 1, true, 0)) AS activos, SUM(CASE(recuperado LIKE '%25N/A%25', 1, true, 0)) AS na&ciudad_municipio=" +
            slug);

    if (data.statusCode == 200) {
      List<CountrySummaryModel> summaryList = (json.decode(data.body) as List)
          .map((item) => new CountrySummaryModel.fromJson(item))
          .toList();
      summaryList.sort((a, b) => a.date.compareTo(b.date));

      return summaryList;
    } else {
      return [];
    }
  }

  Future<List<CountryModel>> getCountryList() async {
    final data = await http.Client()
        .get("https://www.datos.gov.co/resource/xdk5-pm3f.json");

    if (data.statusCode != 200) throw Exception();

    List<CountryModel> countries = (json.decode(data.body) as List)
        .map((item) => new CountryModel.fromJson(item))
        .toList();

    return countries;
  }
}
