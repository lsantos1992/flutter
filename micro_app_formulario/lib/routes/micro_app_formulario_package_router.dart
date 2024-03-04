import 'package:auto_route/auto_route.dart';
import 'package:micro_app_formulario/routes/micro_app_formulario_package_router.gm.dart';

@AutoRouterConfig.module(
  replaceInRouteName: 'Page,Route',
  deferredLoading: true,
)
class MicroAppFormularioModuleRouter extends $MicroAppFormularioModuleRouter {
  List<AutoRoute> get routes => [
        AutoRoute(page: FormularioApp.page, path: '/formulario'),
      ];
}
