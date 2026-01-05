import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:get_x_tutorial/data/app_exception.dart';
import 'package:get_x_tutorial/data/network/base_api_services.dart';
import 'package:get_x_tutorial/utils/utils.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  // This one method is for GET Apis.
  @override
  Future<dynamic> getApi(String url) async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body.toString());
        return jsonResponse;
      } else {
        throw Exception("Status Code: ${response.statusCode}");
      }
    } on SocketException {
      throw InternetException();
    } on TimeoutException {
      throw RequestTimeOut();
    }
  }

  @override
  Future<dynamic> postApi(var data, String url) async {
    dynamic jsonResponse1;

    try {
      final response = await http
          .post(
            Uri.parse(url),
            body: data,
          )
          .timeout(Duration(seconds: 10));
      jsonResponse1 = returnPostResponse(response);
    } on SocketException {
      throw InternetException(message: "No internet");
    } on TimeoutException {
      throw RequestTimeOut(message: "Request Time out");
    } catch (e) {
      Utils.snackBar(title: e.toString(), message: "It is corret");
    }
    return jsonResponse1;
  }

  dynamic returnPostResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 401:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      default:
        throw FetchDataException(
            message: "Error occur while communicating with server.");
    }
  }
}
