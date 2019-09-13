import 'package:flutter_test/flutter_test.dart';
import 'package:prefecture_name_app/api/api_impl.dart';
import 'package:prefecture_name_app/model/city.dart';
import 'package:prefecture_name_app/repository/repository_impl.dart';

void main() {
  final api = ApiModelImpl('geoapi.heartrails.com');
  final repository = RepositoryImpl(api);

  group("APIのテスト", () {
    test("都道府県名リストを取得", () async {
      final prefNames = await api.getPrefectureNames();
      expect((prefNames.length > 0), true);
    });

    test("市区町村名リストを取得", () async {
      final cityNames = await api.getCityNames(prefectureName: "東京都");
      expect(cityNames.length > 0, true);
    });
  });
  
  group("リポジトリのテスト", () {
    test("都道府県名リストを取得", () async {
      final prefNames = await repository.getPrefectureNames();
      for (String p in prefNames) {
        print(p);
      }
      expect((prefNames.length > 0), true);
    });

    test("市区町村名リストを取得", () async {
      final cityNames = await repository.getCityNames("東京都");
      expect(cityNames.length > 0, true);
    });
  });
}