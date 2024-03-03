import 'package:auto_route/auto_route.dart';
import 'web_route.gr.dart';
import 'package:micro_app_home/routes/micro_app_home_router.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
  deferredLoading: true,
)
class BaseAppRouter extends $BaseAppRouter {
  @override
  List<AutoRoute> get routes => [
        //AutoRoute(page: HomeRoute.page, path: '/', initial: true),
        ...MicroAppHomeRouter().routes,
        // ...MicroAppFormularioRouter().routes,
      ];
}
