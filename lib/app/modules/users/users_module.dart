import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterboilerplatemodularmobx/app/modules/users/views/http_users_screen.dart';

// Importação de paginas
// import 'views/list_product_page.dart';
import '../users_example_crud_dio/views/list_page.dart';
import 'views/dio_users_screen.dart';
import 'views/list_page.dart';

class UsersModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const UsersPage(), children: [
          ChildRoute(
            '/HTTP',
            child: (_, __) => const HttpUsersScreen(),
            transition: TransitionType.noTransition,
          ),
          ChildRoute(
            '/Dio',
            child: (_, __) => const DioUsersScreen(),
            transition: TransitionType.noTransition,
          ),
          ChildRoute(
            '/Userscrud',
            child: (_, __) => const UsersCrudPage(),
            transition: TransitionType.noTransition,
          )
        ]),
        // ChildRoute(
        //   '/list',
        //   child: (_, args) => ListProductPage(id: args.data ?? ''),
        //   // Animação das rotas
        //   transition: TransitionType.fadeIn,
        //   // duration: const Duration(seconds: 1)
        // ),
      ];
}
