import 'package:either_dart/src/either.dart';
import 'package:news_app/core/error/exception.dart';
import 'package:news_app/core/error/failure.dart';
import 'package:news_app/data/data_source/news_remote_data_source.dart';
import 'package:news_app/domain/entites/article.dart';
import 'package:news_app/domain/repository/base_article_repository.dart';

class NewsRepository extends BaseAtricleRepository {
  final BaseNewsDataSource baseNewsDataSource;

  NewsRepository(this.baseNewsDataSource);

  @override
  Future<Either<Failure, List<Article>>> getArticle() async {
    final result = await baseNewsDataSource.getAllNews();
    try {
      return Right(result);
    } on ServerException catch (error){
      return Left(ServerFailure(error.toString()));
    }
  }
}
