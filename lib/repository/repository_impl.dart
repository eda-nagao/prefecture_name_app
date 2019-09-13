import 'package:prefecture_name_app/api/api.dart';
import 'package:prefecture_name_app/model/city.dart';
import 'package:prefecture_name_app/repository/repository.dart';

class RepositoryImpl extends Repository {
  ApiModel _api;

  RepositoryImpl(this._api);

  @override
  Future<List<String>> getPrefectureNames() {
    return _api.getPrefectureNames();
  }

  @override
  Future<List<City>> getCityNames(String prefectureName) {
    return _api.getCityNames(prefectureName: prefectureName);
  }
}