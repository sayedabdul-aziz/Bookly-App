import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectTimeout:
        return ServerFailure('Connection Timeout with ApiServer');
      case DioErrorType.sendTimeout:
        return ServerFailure('Send Timeout with ApiServer');
      case DioErrorType.receiveTimeout:
        return ServerFailure('Receive Timeout with ApiServer');
      case DioErrorType.response:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);
      case DioErrorType.cancel:
        return ServerFailure('Request to ApiServer was canceld');
      case DioErrorType.other:
        if (dioError.message.contains('SocketException')) {
          return ServerFailure('No internet connection');
        }
        return ServerFailure('Unexcpected error, Please try again! ');
      default:
        return ServerFailure('Oops there was an error, Please try again! ');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later! ');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, Please try later! ');
    } else {
      return ServerFailure('Oops there was an error, Please try again! ');
    }
  }
}
