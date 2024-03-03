import 'package:auto_route/auto_route.dart';

import 'micro_app_home_router.gr.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
  deferredLoading: true,
)
class MicroAppHomeRouter extends $MicroAppHomeRouter {
  final prefix = kIsWeb ? '/' : '/home';

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: prefix, initial: true),
        AutoRoute(page: MostrarApp.page, path: '$prefix/mostrar'),
      ];
}
