import 'package:prefecture_name_app/api/api.dart';
import 'package:prefecture_name_app/repository/repository.dart';

class RepositoryImpl extends Repository {
  ApiModel _api;

  RepositoryImpl(this._api);

  Future<List<String>> getPrefectureNames() {
    return _api.getPrefectureNames();
  }
}