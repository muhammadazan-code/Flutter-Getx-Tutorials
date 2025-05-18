import 'package:get_x_tutorial/models/loginModel/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferenceModel {
  Future<bool> saveUser(UserModel responseModel) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('token', responseModel.token.toString());
    sp.setBool('isLogin', responseModel.isLogin!);
    return true;
  }

  Future<UserModel> getUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    dynamic token = sp.get('token');
    bool? isLogin = sp.getBool('isLogin');
    return UserModel.fromJson({
      'token': token,
      'isLogin': isLogin,
    });
  }

  Future<bool> removeUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
    return true;
  }
}
