class Book {
  final int id;
  final String title;
  final String author;
  final String coverUrl;
  final String downloadUrl;

  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.coverUrl,
    required this.downloadUrl,
  });

  Book.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        title = map["title"],
        author = map["author"],
        coverUrl = map["coverUrl"],
        downloadUrl = map["downloadUrl"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "title": title,
      "author": author,
      "coverUrl": coverUrl,
      "downloadUrl": downloadUrl,
    };
  }
}
