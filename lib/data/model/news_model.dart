import 'package:news_app/domain/entites/article.dart';

class NewsModel extends Article {
  const NewsModel(
      {required super.title,
      required super.author,
      required super.description,
      required super.image,
      required super.content,
      required super.url,
      required super.publishAt});

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        title: json["title"],
        author: json["author"],
        description: json["description"],
        image: json["image"] ,
        content: json["content"] ,
        url: json["url"] ,
        publishAt: json["publishAt"] ,
      );
}
