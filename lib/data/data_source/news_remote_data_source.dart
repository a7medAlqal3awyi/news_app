import 'package:dio/dio.dart';
import 'package:news_app/core/error/exception.dart';
import 'package:news_app/core/utils/app_constants.dart';
import 'package:news_app/data/model/news_model.dart';

abstract class BaseNewsDataSource {
  Future<List<NewsModel>> getAllNews();
}

class NewsRemoteDataSource extends BaseNewsDataSource {
  @override
  Future<List<NewsModel>> getAllNews() async {
    final response = await Dio().get(ApiConstants.getAllNewsPath);
    if (response.statusCode == 200) {
      return List<NewsModel>.from(
          (response.data["results"] as List).map((e) => NewsModel.fromJson(e)));
    } else {
      throw ServerException();
    }
  }
}
