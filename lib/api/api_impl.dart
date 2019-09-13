import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:prefecture_name_app/api/api.dart';
import 'package:prefecture_name_app/api/response/get_city_name_response.dart';
import 'package:prefecture_name_app/api/response/get_prefecture_name_response.dart';
import 'package:prefecture_name_app/model/city.dart';

class ApiModelImpl extends ApiModel {
  final String _baseUrl;

  List<String> _prefectureNames = [];
  Map<String, List<City>> _cityListMap = {};

  ApiModelImpl(this._baseUrl);

  @override
  Future<List<String>> getPrefectureNames({bool refresh = false}) async {
    if (refresh || _prefectureNames.isEmpty) {
      await _requestPrefectureNames();
    }
    return _prefectureNames;
  }

  @override
  Future<List<City>> getCityNames({@required String prefectureName, bool refresh = false}) async {
    final cityList = _cityListMap[prefectureName];
    if (refresh || cityList == null) {
      await _requestCityNames(prefectureName);
    }
    return _cityListMap[prefectureName];
  }

  Future<http.Response> _getRequest(Map<String, String> params) async {
    return http.get(Uri.http(_baseUrl, "/api/json", params));
  }

  _requestPrefectureNames() async {
    final response = await _getRequest({'method': 'getPrefectures'});
    if (response.statusCode == 200) {
      _prefectureNames = GetPrefectureNameResponse.fromJson(jsonDecode(response.body)).prefecture;
    }
  }

  _requestCityNames(String prefectureName) async {
    final response = await _getRequest({'method': 'getCities', 'prefecture': prefectureName});
    if (response.statusCode == 200) {
      final cityList = GetCityNameResponse.fromJson(jsonDecode(response.body)).cities.where((it) => it is City).toList();
      _cityListMap[prefectureName] = cityList;
    }
  }
}