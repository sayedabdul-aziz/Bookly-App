import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo_imp.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());
  final SearchRepoImpl searchRepo;
  List<BookModel> books = [];
  Future<void> getBooks({required String key}) async {
    emit(SearchLoading());
    var result = await searchRepo.fetchSearchBooks(key: key);
    result.fold((l) => emit(SearchFailure(l.errMessage)), (r) {
      books = r;
      emit(SearchSuccess());
    });
  }
}
