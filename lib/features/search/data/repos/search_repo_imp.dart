import 'package:ebookia/core/utils/api_servers.dart';
import 'package:ebookia/features/home/data/models/book_model/book_model.dart';
import 'package:ebookia/core/errors/failures.dart';
import 'package:ebookia/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl extends SearchRepo {
  final ApiServer apiServer;

  SearchRepoImpl({required this.apiServer});
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks(
      {required String key}) async {
    try {
      var result =
          await apiServer.get(endPoint: 'volumes?q=$key&Filtering=free-ebooks');
      List<BookModel> books = [];
      for (var item in result['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
