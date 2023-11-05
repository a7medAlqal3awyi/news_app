import 'package:dio/dio.dart';
import 'package:news_app/core/error/exception.dart';
import 'package:news_app/core/utils/app_constants.dart';
import 'package:news_app/data/model/news_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
abstract class BaseNewsDataSource {
  Future<List<NewsModel>> getAllNews();
}


Future fetchDataFromNewsAPI() async {
  final String apiKey = '847d8a876ced4a42913fe1b7e197d512';
  final String apiUrl = 'https://newsapi.org/v2/everything?q=bitcoin&apiKey=$apiKey';

  try {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      if (data['status'] == 'ok') {
        // If the response status is 'ok', return the articles
        return data['articles'];
      } else {
        throw Exception('API request failed with status: ${data['status']}');
      }
    } else {
      throw Exception('Failed to load data from the News API');
    }
  } catch (e) {
    print('Error: $e');
    throw Exception('Failed to load data from the News API');
  }
}

class NewsRemoteDataSource implements BaseNewsDataSource {
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
