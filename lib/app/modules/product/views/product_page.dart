import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterboilerplatemodularmobx/app/modules/product/controllers/product_store.dart';
import 'package:flutterboilerplatemodularmobx/app/modules/product/models/post_model.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    ProductStore store = ProductStore();

    @override
    void initState() {
      super.initState();
      store.getPostData();
    }

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
