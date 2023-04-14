import 'package:bookly/core/api_service.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/models/BookModel.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo{
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewSetBooks() async{
  try{
    var data=await apiService.get(endPoint: "volumes?Filtering=free-ebooks&Sorting=newest &q=subject:programming");
    List<BookModel>books=[];
    for(var item in data['items']){
      books.add(BookModel.fromJson(item));
    }
    return right(books);
  }
  catch(e){
    return left(ServerFailure());
  }
  }


  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

}