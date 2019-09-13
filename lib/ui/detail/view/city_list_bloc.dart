import 'dart:async';

import 'package:prefecture_name_app/model/city.dart';
import 'package:prefecture_name_app/service_locator.dart';

class CityListBloc {
  final _streamController = StreamController<List<City>>();
  Stream<List<City>> get value => _streamController.stream;

  CityListBloc(String prefectureName) {
    _initValue(prefectureName);
  }

  void _initValue(String prefectureName) async {
    final res = await ServiceLocator().getRepository().getCityNames(prefectureName);
    _streamController.sink.add(res);
  }

  void dispose() {
    _streamController.close();
  }
}