import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
  deferredLoading: true,
)
class AppRouter extends $AppRouter {
  final prefix = '/home';

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: prefix, initial: true),
        AutoRoute(page: MostrarApp.page, path: '$prefix/mostrar'),
      ];
}
