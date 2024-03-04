import 'package:auto_route/auto_route.dart';
import 'web_route.gr.dart';
import 'package:micro_app_home/routes/micro_app_home_package_router.dart';
import 'package:micro_app_formulario/routes/micro_app_formulario_package_router.dart';

@AutoRouterConfig(
  deferredLoading: true,
  modules: [
    MicroAppHomeModuleRouter,
    MicroAppFormularioModuleRouter,
  ],
)
class BaseAppRouter extends $BaseAppRouter {
  @override
  // TODO: implement routes
  List<AutoRoute> get routes => [
        ...MicroAppHomeModuleRouter().routes,
        ...MicroAppFormularioModuleRouter().routes,
      ];
}
