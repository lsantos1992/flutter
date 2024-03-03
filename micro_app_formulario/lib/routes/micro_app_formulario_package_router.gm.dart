// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:micro_app_formulario/screens/formulario.dart' deferred as _i1;

abstract class $MicroAppFormularioModuleRouter extends _i2.AutoRouterModule {
  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    FormularioApp.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.FormularioApp(),
        ),
      );
    }
  };
}

/// generated route for
/// [_i1.FormularioApp]
class FormularioApp extends _i2.PageRouteInfo<void> {
  const FormularioApp({List<_i2.PageRouteInfo>? children})
      : super(
          FormularioApp.name,
          initialChildren: children,
        );

  static const String name = 'FormularioApp';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}
