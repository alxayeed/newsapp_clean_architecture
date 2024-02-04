import 'package:dio/dio.dart';
import 'package:news_app_clean_architecture/core/constants/constants.dart';
import 'package:news_app_clean_architecture/features/daily_news/data/models/article.dart';
import 'package:retrofit/retrofit.dart';

part 'article_api_service.g.dart';

@RestApi(baseUrl: newsAPIBaseURL)
abstract class ArticleApiService {
  factory ArticleApiService(Dio dio) = _ArticleApiService;

  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getArticles(
    @Query("apiKey") String? apiKey,
    @Query("country") String? country,
    @Query("category") String? category,
  );
}
