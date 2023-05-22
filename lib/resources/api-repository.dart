import 'package:blocapi/model/covid_model.dart';
import 'package:blocapi/resources/api-provider.dart';

class ApiRespository {
  final provider = ApiProvider();
  Future<CovidModel> fetchCovidList() {
    return provider.getCovidList();
  }
}
