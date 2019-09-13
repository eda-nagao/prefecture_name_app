import 'package:prefecture_name_app/api/api.dart';
import 'package:prefecture_name_app/api/api_impl.dart';
import 'package:prefecture_name_app/repository/repository.dart';
import 'package:prefecture_name_app/repository/repository_impl.dart';

class ServiceLocator {
  static final ServiceLocator _instance = ServiceLocator._internal();

  factory ServiceLocator() {
    return _instance;
  }

  ServiceLocator._internal() {
    _api = ApiModelImpl('geoapi.heartrails.com');
    _repository = RepositoryImpl(_api);
  }

  ApiModel _api;
  Repository _repository;

  Repository getRepository() {
    return _repository;
  }
}