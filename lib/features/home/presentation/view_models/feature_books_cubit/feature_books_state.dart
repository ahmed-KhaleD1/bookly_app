import 'package:bookly/features/home/data/models/book_model/book_model.dart';

abstract class FeatureBooksState {
  const FeatureBooksState();
}

class FeatureBooksInitial extends FeatureBooksState {}

class FeatureBooksLoading extends FeatureBooksState {}

class FeatureBooksSuccess extends FeatureBooksState {
  final List<BookModel> books;

  const FeatureBooksSuccess(this.books);
}

class FeatureBooksFailure extends FeatureBooksState {
  final String errMessage;

  const FeatureBooksFailure(this.errMessage);
}
