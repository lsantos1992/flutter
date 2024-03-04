import 'package:auto_route/auto_route.dart';

import 'micro_app_home_router.gr.dart';
import 'micro_app_home_package_router.dart';

@AutoRouterConfig(
  modules: [
    MicroAppHomeModuleRouter,
  ],
)
class MicroAppHomeRouter extends $MicroAppHomeRouter {
  @override
  List<AutoRoute> get routes => [
        ...MicroAppHomeModuleRouter().routes,
      ];
}
