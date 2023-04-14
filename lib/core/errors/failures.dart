import 'package:dio/dio.dart';

abstract class Failure{
final String errorMessage;
const Failure(this.errorMessage);
}

class ServerFailure extends Failure{
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioError dioError){
    switch(dioError.type){

      case DioErrorType.connectionTimeout:
        return ServerFailure("Connection timeout with ApiServer");

      case DioErrorType.sendTimeout:
        return ServerFailure("Send timeout with ApiServer");

      case DioErrorType.receiveTimeout:
        return ServerFailure("Receive timeout with ApiServer");

      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(dioError.response!.statusCode!,dioError.response!.data);

      case DioErrorType.cancel:
        return ServerFailure("Request to ApiServer was canceled");
      case DioErrorType.connectionError:
        return ServerFailure("Connection Error with ApiServer");
      case DioErrorType.badCertificate:
      return ServerFailure("badCertificate");
      case DioErrorType.unknown:
        if(dioError.message!.contains("SocketException")){
          return ServerFailure("No Internet Connection");
        }
        return ServerFailure("Unexpected Error , Please tyr later");
      default:
        return ServerFailure("Opps There was an Error, Please tyr again");
    }

  }

   factory ServerFailure.fromResponse(int statusCode,dynamic response){
    if(statusCode==400||statusCode==401||statusCode==403){
      return ServerFailure(response['error']['message']);
    }else if(statusCode==404){
      return ServerFailure("Your request not found, Please tyr later!");
    }else if(statusCode==500){
      return ServerFailure("Internal Server error, Please tyr later!");
    }else{
      return ServerFailure("Opps There was an Error, Please tyr again");
    }
   }
}