import 'dart:convert';

class GetPrefectureNameResponse {
  List<String> prefecture;

  GetPrefectureNameResponse(this.prefecture);

  static GetPrefectureNameResponse fromJson(Map<String, dynamic> src) {
    var prop = src['response']['prefecture'];
    if (prop is List) {
      return GetPrefectureNameResponse(prop.map((it) => it.toString()).toList());
    } else {
      return GetPrefectureNameResponse([]);
    }
  }
}