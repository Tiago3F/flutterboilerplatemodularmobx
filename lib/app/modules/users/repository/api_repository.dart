// import '../models/users_model.dart';
// import '../service/api_service.dart';

// class ApiRepository {
//   final ApiService? apiService;

//   ApiRepository({this.apiService});

//   Future<List<Post>?> getPostList() async {
//     final response = await apiService?.getPostData();
//     print(response);
//     if (response != null) {
//       final data = response.data as List<dynamic>;
//       return data
//           .map(
//             (singlePost) => Post.fromMap(singlePost),
//           )
//           .toList();
//     }
//     return null;
//   }
// }
