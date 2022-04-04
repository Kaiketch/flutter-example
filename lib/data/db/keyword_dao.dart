import 'package:flutter_example/data/db/app_db.dart';
import 'package:flutter_example/model/keyword.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final keywordDaoProvider =
    Provider<KeywordDao>((ref) => KeywordDao(ref.read(dbProvider)));

class KeywordDao {
  KeywordDao(this._appDb);

  final AppDb _appDb;

  Future<void> insertKeyword(Keyword keyword) async {
    final db = await _appDb.database;
    await db.insert('keywords', keyword.toMap());
  }

  Future<List<Keyword>> selectKeywords() async {
    final db = await _appDb.database;
    final List<Map<String, dynamic>> mapList =
        await db.query("keywords", orderBy: "id DESC");
    return List.generate(
      mapList.length,
      (i) {
        return Keyword(
          mapList[i]['keyword'],
          id: mapList[i]['id'],
        );
      },
    );
  }
}
