part of 'features_books_cubit.dart';

abstract class FeaturesBooksState extends Equatable {
  const FeaturesBooksState();

  @override
  List<Object> get props => [];
}

class FeaturesBooksInitial extends FeaturesBooksState {}

class FeaturesBooksLoading extends FeaturesBooksState {}

class FeaturesBooksSuccess extends FeaturesBooksState {
  final List<BookModel> featuresBooks;
  const FeaturesBooksSuccess(this.featuresBooks);
}

class FeaturesBooksFailure extends FeaturesBooksState {
  final String error;

  const FeaturesBooksFailure(this.error);
}
