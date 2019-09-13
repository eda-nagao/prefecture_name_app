import 'package:prefecture_name_app/model/city.dart';

abstract class Repository {
  Future<List<String>> getPrefectureNames();
  Future<List<City>> getCityNames(String prefectureName);
}