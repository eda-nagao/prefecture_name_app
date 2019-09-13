import 'package:flutter/material.dart';
import 'package:prefecture_name_app/model/city.dart';

abstract class ApiModel {
  Future<List<String>> getPrefectureNames({bool refresh = false});
  Future<List<City>> getCityNames({@required String prefectureName, bool refresh = false});
}