import '../../../../core/resources/data_state.dart';
import '../entity/article.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}
