import 'package:auto_route/auto_route.dart';

import 'micro_app_formulario_router.gr.dart';

@AutoRouterConfig(deferredLoading: true)
class MicroAppFormularioRouter extends $MicroAppFormularioRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: FormularioApp.page, initial: true),
      ];
}
