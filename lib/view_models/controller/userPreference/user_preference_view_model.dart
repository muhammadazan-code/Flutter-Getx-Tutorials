import 'package:get_x_tutorial/models/loginModel/login_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferenceModel {
  Future<bool> saveUser(LoginResponseModel responseModel) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('token', responseModel.token.toString());
    return true;
  }

  Future<LoginResponseModel> getUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    dynamic response = sp.get('token');
    return LoginResponseModel.fromJson(response);
  }

  Future<bool> removeUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
    return true;
  }
}
