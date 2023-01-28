import 'package:ebookia/features/home/data/models/book_model/book_model.dart';
import 'package:ebookia/features/home/data/repos/home_repos.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.repo) : super(NewestBooksInitial());

  final HomeRepo repo;

  Future<void> getBooks() async {
    emit(NewestBooksLoading());
    var result = await repo.fetchNewestBooks();
    result.fold((l) {
      emit(NewestBooksFailure(l.errMessage));
    }, (r) {
      emit(NewestBooksSuccess(r));
    });
  }
}
