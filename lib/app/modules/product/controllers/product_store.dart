import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../models/post_model.dart';
import '../repository/api_repository.dart';
part 'product_store.g.dart';

class ProductStore = _ProductStoreBase with _$ProductStore;

abstract class _ProductStoreBase with Store {
  final ApiRepository apiRepository = ApiRepository();

  @observable
  late ObservableFuture<List<Post>?> _listPostFuture;

  @computed
  ObservableFuture<List<Post>?> get listPostFuture => _listPostFuture;

  set listPostFuture(ObservableFuture<List<Post>?> listPostFuture) {
    _listPostFuture = listPostFuture;
  }

  @action
  Future fetchPostData() => listPostFuture =
      ObservableFuture(apiRepository.getPostList()).then((posts) => posts);

  void getPostData() {
    print(fetchPostData());
  }
}

  // Future<List<Post>?> fetchPostApi() async {
  //   try {
  //     final List<Post>? postList = await apiRepository.getPostList();
  //     return postList;
  //   } catch (e) {
  //     print("Erro: $e");
  //   }
  // }

