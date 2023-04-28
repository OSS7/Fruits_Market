import 'dart:async';
import 'dart:convert';
import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:http/http.dart' as http;

import 'api_exceptions.dart';
import 'local_storage.dart';

class ApiHelper {
  // ignore: avoid-dynamic
  // static Future<dynamic> get(String url, {Map<String, dynamic>? params}) async {
  //   // ignore: prefer_typing_uninitialized_variables
  //   final responseJson;
  //   final dio = Dio();
  //
  //   final token = LocalStorage.getLocal('token');
  //   // print('ApiHelper.get');
  //   // print(token);
  //   dio.options.headers = {
  //     'lang': currentLang(),
  //     'Authorization': 'Bearer $token',
  //   };
  //
  //   try {
  //     final response = await dio.get(url, queryParameters: params);
  //     responseJson = _returnResponse(response);
  //   } on SocketException {
  //     // ignore: avoid-throw-in-catch-block
  //     throw FetchDataException('No Internet connection');
  //   }
  //
  //   return responseJson;
  // }
  //
  // static Future<dynamic> put(String url, {Map<String, dynamic>? params}) async {
  //   // ignore: prefer_typing_uninitialized_variables
  //   final responseJson;
  //   final dio = Dio();
  //   final token = LocalStorage.getLocal('token');
  //
  //   dio.options.headers = {
  //     'lang': currentLang(),
  //     'Authorization': 'Bearer $token',
  //   };
  //
  //   try {
  //     final body = json.encode(params);
  //     final response = await dio.put(url, data: body);
  //     responseJson = _returnResponse(response);
  //   } on SocketException {
  //     // ignore: avoid-throw-in-catch-block
  //     throw FetchDataException('No Internet connection');
  //   }
  //
  //   return responseJson;
  // }
}
