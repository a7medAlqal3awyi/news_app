import 'package:equatable/equatable.dart';
import 'package:news_app/domain/entites/article.dart';

class AllData extends Equatable {
  final List<Article> article;
  final String status;

  final int totalResults;

  const AllData({
    required this.article,
    required this.status,
    required this.totalResults,
  });

  @override
  List<Object?> get props => [
        article,
        status,
        totalResults,
      ];
}
