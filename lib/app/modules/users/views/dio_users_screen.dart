import 'package:flutter/material.dart';

import '../controllers/users_store.dart';
import '../models/users_model.dart';

class DioUsersScreen extends StatefulWidget {
  const DioUsersScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return UsersScreenData();
  }
}

class UsersScreenData extends State<DioUsersScreen> {
  UserStore store = UserStore();

  @override
  void initState() {
    super.initState();
    store.fetchUsersDataDio();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DIO PAGE"),
      ),
      body: FutureBuilder<List<User>>(
        future: store.listUsersFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
                itemBuilder: (context, index) {
                  var user = (snapshot.data as List<User>)[index];
                  return Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          user.userName,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        const SizedBox(height: 5),
                        Text(user.userEmail),
                        const SizedBox(height: 5),
                        Text(
                            "${user.userAddress.userStreet}${user.userAddress.userSuite}${user.userAddress.userCity}${user.userAddress.userZipCode}"),
                        const SizedBox(height: 5),
                        Text(user.userPhone),
                        const SizedBox(height: 5),
                        Text(user.userWebsite),
                        const SizedBox(height: 5),
                        Text(user.userCompany.name),
                        const SizedBox(height: 5),
                        Text(user.userCompany.catchPhrase),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: (snapshot.data as List<User>).length);
          } else if (snapshot.hasError) {
            return Center(
              child: Text("${snapshot.error}"),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
