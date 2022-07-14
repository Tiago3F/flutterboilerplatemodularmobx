import 'package:mobx/mobx.dart';

import '../models/users_model.dart';
import '../service/api_service.dart';

part 'users_store.g.dart';

class UserStore = _UserStore with _$UserStore;

abstract class _UserStore with Store {
  final ApiService apiService = ApiService();

  @observable
  ObservableFuture<List<User>>? listUsersFuture;

  @action
  Future fetchUsersData() => listUsersFuture = ObservableFuture(apiService
      .getApiData('https://jsonplaceholder.typicode.com/users')
      .then((users) => users));

  void getUsersData() {
    fetchUsersData();
  }
}
