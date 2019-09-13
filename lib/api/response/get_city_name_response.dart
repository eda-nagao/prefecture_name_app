import 'package:prefecture_name_app/model/city.dart';

class GetCityNameResponse {
  List<City> cities;

  GetCityNameResponse(this.cities);

  static GetCityNameResponse fromJson(Map<String, dynamic> src) {
    var prop = src['response']['location'];
    if (prop is List) {
      return GetCityNameResponse(prop.map((it) => City.fromJson(it)).toList());
    } else {
      return GetCityNameResponse([]);
    }
  }
}