import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:get_x_tutorial/data/app_exception.dart';
import 'package:get_x_tutorial/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  // This one method is for GET Apis.
  Future<dynamic> getApi(String url) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic jsonResponse;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      jsonResponse = returnGetResponse(response);
    } on SocketException {
      throw InternetException();
    } on TimeoutException {
      throw RequestTimeOut();
    }
    return jsonResponse;
  }

  dynamic returnGetResponse(http.Response response) {
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
  // This one method is for POST Apis.
  Future<dynamic> postApi(var data, String url) async {
    dynamic jsonResponse;
    if (kDebugMode) {
      print(url);
      print(data);
    }
    try {
      final response = await http
          .post(
            Uri.parse(url),
            body: jsonEncode(data),
          )
          .timeout(Duration(seconds: 10));
      jsonResponse = returnPostResponse(response);
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
