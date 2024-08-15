import 'package:dio/dio.dart';
import 'dart:async';

Future<List<dynamic>> getStringData() async {
  Dio dio = Dio();
  String api = "https://randomuser.me/api?results=10";

  var serverResponse = await dio.get(api,
      options: Options(
        sendTimeout: Duration(seconds: 30),
        receiveTimeout: Duration(seconds: 30),
      ));

  List<dynamic> results = serverResponse.data['results'];

  return results;
}
