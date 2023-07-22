import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly/features/home/presentation/view_models/feature_books_cubit/feature_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBooksInitial());

  final HomeRepo homeRepo;

  Future<void> featchFeatureBooks() async {
    emit(FeatureBooksLoading());

    var result = await homeRepo.fetchFeatureBooks();
    result.fold((failure) {
      emit(FeatureBooksFailure(failure.errMessage));
    }, (books) {
      emit(FeatureBooksSuccess(books));
    });
  }
}
