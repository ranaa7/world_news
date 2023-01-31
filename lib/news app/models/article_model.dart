class ArticleModel {
  final String title;
  final String? des;
  final String url;
  final String? urltoimg;

  ArticleModel(
      {required this.title,
      required this.des,
      required this.url,
      required this.urltoimg});

  factory ArticleModel.fromjson(Map<String, dynamic> json) {
    return ArticleModel(
        title: json["title"],
        des: json["description"],
        url: json["url"],
        urltoimg: json["urlToImage"]);
  }
}
