import 'package:get/get.dart';
import 'package:get_x_tutorial/data/response/status.dart';
import 'package:get_x_tutorial/models/homeModel/user_list_model.dart';
import 'package:get_x_tutorial/repository/homeRepository/home_repository.dart';

class HomeController extends GetxController {
  final api = HomeRepository();
  final rxRequestStatus = Status.LOADING.obs;
  final userList = UserListModel().obs;
  RxString error = ''.obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setUserList(UserListModel _value) => userList.value = _value;
  void setError(String _value) => error.value = _value;

  void userListApi() {
    //  setRxRequestStatus(Status.LOADING);

    api.repoUserList().then((value) {
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
    }).onError((error, stackTrace) {
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);
    });
  }

  void refreshApi() {
    setRxRequestStatus(Status.LOADING);
    api.repoUserList().then((value) {
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
    }).onError((error, stackTrace) {
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);
    });
  }
}
