import 'package:auto_route/auto_route.dart';

import 'micro_app_home_package_router.gm.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

@AutoRouterConfig.module(
  replaceInRouteName: 'Page,Route',
  deferredLoading: true,
)
class MicroAppHomeModuleRouter extends $MicroAppHomeModuleRouter {
  final prefix = kIsWeb ? '/' : '/home';

  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: prefix),
        AutoRoute(page: MostrarApp.page, path: '$prefix/mostrar'),
      ];
}
