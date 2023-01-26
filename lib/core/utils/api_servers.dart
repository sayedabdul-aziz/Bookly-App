import 'package:dio/dio.dart';

abstract class ApiServer {
  final baseURL = 'https://www.googleapis.com/books/v1/';
  final Dio dio;
  ApiServer({required this.dio});

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get('$baseURL$endPoint');
    return response.data;
  }
}
