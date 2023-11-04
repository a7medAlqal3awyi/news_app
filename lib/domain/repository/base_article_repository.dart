import 'package:either_dart/either.dart';
import 'package:news_app/domain/entites/article.dart';

import '../../core/error/failure.dart';

abstract class BaseAtricleRepository{
  Future <Either<Failure, List<Article>>> getArticle();

}