import 'package:blocapi/model/covid_model.dart';
import 'package:dio/dio.dart';

class ApiProvider {
  final Dio dio = Dio();
  final String url = 'https://disease.sh/v3/covid-19/countries/';

  Future<CovidModel> getCovidList() async {
    try {
      final response = await dio.get(url);
      return CovidModel.fromJson(response.data);
    } catch (e) {
      throw '${e}';
    }
  }
}
