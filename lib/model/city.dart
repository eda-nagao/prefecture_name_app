import 'package:flutter/material.dart';

class City {
  String name;
  String kana;

  City({@required this.name, @required this.kana});

  static City fromJson(Map<String, dynamic> src) {
    final cityName = src['city'];
    final cityNameKana = src['city_kana'];
    if (cityName is String && cityNameKana is String) {
      return City(
        name: cityName,
        kana: cityNameKana
      );
    } else {
      return null;
    }
  }
}