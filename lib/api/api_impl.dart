import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:prefecture_name_app/api/api.dart';
import 'package:prefecture_name_app/api/response/get_prefecture_name_response.dart';

class ApiModelImpl extends ApiModel {
  final String _baseUrl;

  List<String> _prefectureNames = [];

  ApiModelImpl(this._baseUrl);

  @override
  Future<List<String>> getPrefectureNames({bool refresh = false}) async {
    if (refresh || _prefectureNames.isEmpty) {
      await _requestPrefectureNames();
    }
    return _prefectureNames;
  }

  _requestPrefectureNames() async {
    final response = await http.get(_baseUrl + "/api/json?method=getPrefectures");
    if (response.statusCode == 200) {
      _prefectureNames = GetPrefectureNameResponse.fromJson(jsonDecode(response.body)).prefecture;
    }
  }
}