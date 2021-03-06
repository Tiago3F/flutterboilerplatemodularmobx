import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  State<UsersPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<UsersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Page"),
      ),
      body: Row(
        children: [
          Container(
            color: Colors.grey[200],
            width: MediaQuery.of(context).size.width * 0.2,
            child: Column(
              children: [
                ListTile(
                  title: const Text("HTTP"),
                  onTap: () {
                    Modular.to.navigate('./HTTP');
                  },
                ),
                ListTile(
                  title: const Text("Dio"),
                  onTap: () {
                    Modular.to.navigate('./Dio');
                  },
                ),
                ListTile(
                  title: const Text("Example CRUD"),
                  onTap: () {
                    Modular.to.navigate('./Userscrud');
                  },
                )
              ],
            ),
          ),
          const Expanded(child: RouterOutlet())
        ],
      ),
    );
  }
}
