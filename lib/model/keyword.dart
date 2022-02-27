class Keyword {
  final int? id;
  final String keyword;

  Keyword(this.keyword, {this.id});

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "keyword": keyword,
    };
  }
}
