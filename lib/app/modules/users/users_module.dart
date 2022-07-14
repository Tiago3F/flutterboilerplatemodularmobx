import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterboilerplatemodularmobx/app/modules/users/views/teste.dart';

// Importação de paginas
import 'views/list_product_page.dart';
import 'views/users_page.dart';

class UsersModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const UsersPage(), children: [
          ChildRoute(
            '/red',
            child: (_, __) => const UsersScreen(),
            transition: TransitionType.noTransition,
          ),
          ChildRoute(
            '/blue',
            child: (_, __) => Container(
              color: Colors.blue,
            ),
            transition: TransitionType.noTransition,
          ),
          ChildRoute(
            '/yellow',
            child: (_, __) => Container(
              color: Colors.yellow,
            ),
            transition: TransitionType.noTransition,
          )
        ]),
        ChildRoute(
          '/list',
          child: (_, args) => ListProductPage(id: args.data ?? ''),
          // Animação das rotas
          transition: TransitionType.fadeIn,
          // duration: const Duration(seconds: 1)
        ),
      ];
}
