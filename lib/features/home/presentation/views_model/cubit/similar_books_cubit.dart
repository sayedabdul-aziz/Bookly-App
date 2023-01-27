import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repos.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.repo) : super(SimilarBooksInitial());

  final HomeRepo repo;

  Future<void> getBooks({required String? categoty}) async {
    emit(SimilarBooksLoading());
    var result =
        await repo.fetchSimilarBooks(category: categoty ?? 'Programming');
    result.fold((l) {
      emit(SimilarBooksFailure(l.errMessage));
    }, (r) {
      emit(SimilarBooksSuccess(r));
    });
  }
}
