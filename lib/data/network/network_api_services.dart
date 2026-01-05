import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get_x_tutorial/data/app_exception.dart';
import 'package:get_x_tutorial/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class ClassName extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic jsonResponse;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      jsonResponse = returnResponse(response);
    } on SocketException {
      throw InternetException(message: "No internet");
    } on TimeoutException {
      throw RequestTimeOut(message: "Request Time out");
    }
    return jsonResponse;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw InvalidUrlException(message: "Invalid url");
      default:
        throw FetchDataException(
            message: "Error occur while communicating with server.");
    }
  }

  @override
  Future<dynamic> postApi(var data, String url) async {
    dynamic jsonResponse;
    if (kDebugMode) {
      print(url);
      print(data);
    }
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      jsonResponse = returnResponse(response);
    } on SocketException {
      throw InternetException(message: "No internet");
    } on TimeoutException {
      throw RequestTimeOut(message: "Request Time out");
    }
    return jsonResponse;
  }

  dynamic returnPostResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw InvalidUrlException(message: "Invalid url");
      default:
        throw FetchDataException(
            message: "Error occur while communicating with server.");
    }
  }
}
