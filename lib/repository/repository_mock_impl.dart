import 'package:prefecture_name_app/model/city.dart';
import 'package:prefecture_name_app/repository/repository.dart';

class RepositoryMockImpl extends Repository {
  @override
  Future<List<String>> getPrefectureNames() {
    return Future.value(
      [
        'TEST_北海道',
        'TEST_青森県',
        'TEST_岩手県',
        'TEST_宮城県',
        'TEST_秋田県',
        'TEST_山形県',
        'TEST_福島県',
        'TEST_茨城県',
        'TEST_栃木県',
        'TEST_群馬県',
        'TEST_埼玉県',
        'TEST_千葉県',
        'TEST_東京都',
        'TEST_神奈川県',
        'TEST_新潟県',
        'TEST_富山県',
        'TEST_石川県',
        'TEST_福井県',
        'TEST_山梨県',
        'TEST_長野県',
        'TEST_岐阜県',
        'TEST_静岡県',
        'TEST_愛知県',
        'TEST_三重県',
        'TEST_滋賀県',
        'TEST_京都府',
        'TEST_大阪府',
        'TEST_兵庫県',
        'TEST_奈良県',
        'TEST_和歌山県',
        'TEST_鳥取県',
        'TEST_島根県',
        'TEST_岡山県',
        'TEST_広島県',
        'TEST_山口県',
        'TEST_徳島県',
        'TEST_香川県',
        'TEST_愛媛県',
        'TEST_高知県',
        'TEST_福岡県',
        'TEST_佐賀県',
        'TEST_長崎県',
        'TEST_熊本県',
        'TEST_大分県',
        'TEST_宮崎県',
        'TEST_鹿児島県',
        'TEST_沖縄県',
      ]
    );
  }

  @override
  Future<List<City>> getCityNames(String prefectureName) {
    return Future.value(
        [
            City(
                name: 'TEST_市',
                kana: 'てすとし',
            ),
            City(
                name: 'TEST_町',
                kana: 'てすとちょう',
            ),
            City(
                name: 'TEST_村',
                kana: 'てすとむら',
            ),
        ]
    );
  }
}