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
        title: const Text("Product Page"),
      ),
      body: Row(
        children: [
          Container(
            color: Colors.grey[200],
            width: MediaQuery.of(context).size.width * 0.2,
            child: Column(
              children: [
                ListTile(
                  title: const Text("Red"),
                  onTap: () {
                    Modular.to.navigate('./red');
                  },
                ),
                ListTile(
                  title: const Text("Blue"),
                  onTap: () {
                    Modular.to.navigate('./blue');
                  },
                ),
                ListTile(
                  title: const Text("Yellow"),
                  onTap: () {
                    Modular.to.navigate('./yellow');
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
