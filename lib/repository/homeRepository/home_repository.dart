import 'package:get_x_tutorial/data/network/network_api_services.dart';
import 'package:get_x_tutorial/models/homeModel/user_list_model.dart';
import 'package:get_x_tutorial/resources/app_url/app_url.dart';

class HomeRepository {
  final _apiServices = NetworkApiServices();
  Future<UserListModel> repoUserList() async {
    Map<String, dynamic> response =
        await _apiServices.getApi(AppUrl.userList.toString());
    return UserListModel.fromJson(response);
  }
}
