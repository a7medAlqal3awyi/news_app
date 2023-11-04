import 'package:either_dart/src/either.dart';
import 'package:news_app/core/error/failure.dart';
import 'package:news_app/core/usecase/base_usecase.dart';
import 'package:news_app/domain/entites/article.dart';
import 'package:news_app/domain/repository/base_article_repository.dart';

class GetAllNewsUseCase extends BaseUseCase <List<Article>, NoParameter >{
   final BaseAtricleRepository  baseAtricleRepository;

  GetAllNewsUseCase(this.baseAtricleRepository);
  @override
  Future < Either< Failure, List<Article>> > call(NoParameter parameters) async{
    return await baseAtricleRepository.getArticle();
  }
}