// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../controllers/post_fetch_cubit.dart';
// import '../models/post_model.dart';

// class MyWidget extends StatelessWidget {
//   const MyWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: BlocBuilder<PostFetchCubit, PostFetchCubitState>(
//         // ignore: missing_return
//         builder: (context, state) {
//           if (state is PostFetchLoading) {
//             return const CircularProgressIndicator();
//           } else if (state is PostFetchError) {
//             return Text(state.failure.message);
//           } else if (state is PostFetchLoaded) {
//             final postList = state.postList;
//             return postList.isEmpty
//                 ? const Text("No any posts")
//                 : ListView.builder(
//                     itemBuilder: (context, index) {
//                       final Post singlePost = postList[index];
//                       return ListTile(
//                         leading: CircleAvatar(
//                           child: Text(singlePost.id.toString()),
//                         ),
//                         title: Text(singlePost.title),
//                         subtitle: Text(singlePost.body),
//                       );
//                     },
//                   );
//           }
//           return const SizedBox.shrink();
//         },
//       ),
//     );
//   }
// }
