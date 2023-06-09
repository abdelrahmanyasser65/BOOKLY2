import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/models/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewSetBooks();

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();

  Future<Either<Failure, List<BookModel>>> featchSimilarBooks(
      {required String category});
}
