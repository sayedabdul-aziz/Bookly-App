import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/repos/home_repos.dart';

part 'features_books_state.dart';

class FeaturesBooksCubit extends Cubit<FeaturesBooksState> {
  FeaturesBooksCubit(this.repo) : super(FeaturesBooksInitial());
  final HomeRepo repo;

  Future<void> getBooks() async {
    emit(FeaturesBooksLoading());
    var result = await repo.fetchFeaturesBooks();
    result.fold((failure) {
      emit(FeaturesBooksFailure(failure.errMessage));
    }, (books) {
      emit(FeaturesBooksSuccess(books));
    });
  }
}
