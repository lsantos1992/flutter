import 'package:auto_route/auto_route.dart';
import 'package:micro_app_formulario/routes/micro_app_formulario_router.dart';
import 'package:micro_app_home/routes/micro_app_home_router.dart';
import 'web_route.gr.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
  deferredLoading: true,
)
class BaseAppRouter extends $BaseAppRouter {
  final prefix = kIsWeb ? '/' : '/home';

  @override
  List<AutoRoute> get routes => [
        ...MicroAppHomeRouter().routes,
        ...MicroAppFormularioRouter().routes,
      ];
}
