import 'package:flutter_example/data/db/keyword_dao.dart';
import 'package:flutter_example/model/keyword.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final keywordRepositoryProvider = Provider<KeywordRepository>(
    (ref) => KeywordRepository(ref.read(keywordDaoProvider)));

class KeywordRepository {
  KeywordRepository(this._keywordDao);

  final KeywordDao _keywordDao;

  Future<void> setKeyword(String keyword) {
    return _keywordDao.insertKeyword(Keyword(keyword));
  }

  Future<List<Keyword>> getKeywords() {
    return _keywordDao.selectKeywords();
  }
}
