import 'package:auto_route/auto_route.dart';

import 'micro_app_formulario_router.gr.dart';
import 'micro_app_formulario_package_router.dart';

@AutoRouterConfig(
  modules: [
    MicroAppFormularioModuleRouter,
  ],
)
class MicroAppHomeRouter extends $MicroAppHomeRouter {
  @override
  List<AutoRoute> get routes => [
        ...MicroAppFormularioModuleRouter().routes,
      ];
}
