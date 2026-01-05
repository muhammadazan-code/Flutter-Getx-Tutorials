import 'package:get_x_tutorial/data/network/network_api_services.dart';
import 'package:get_x_tutorial/resources/app_url/app_url.dart';

class LoginRepository {
  final _apiServices = NetworkApiServices();
  Future<dynamic> loginApi(var data) async {
    dynamic response =await _apiServices.postApi(data, AppUrl.loginUrl);
    return response;
  }
}
