import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String title;

  final String author;

  final String description;

  final String image;

  final String url;

  final String publishAt;

  final String content;

  const Article({
    required this.title,
    required this.author,
    required this.description,
    required this.image,
    required this.content,
    required this.url,
    required this.publishAt,
  });

  @override
  List<Object?> get props => [
        title,
        author,
        description,
        image,
        publishAt,
        content,
      ];
}
