// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:micro_app_home/screens/home.dart' deferred as _i1;
import 'package:micro_app_home/screens/mostrar.dart' deferred as _i2;

abstract class $MicroAppHomeModuleRouter extends _i3.AutoRouterModule {
  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.HomePage(),
        ),
      );
    },
    MostrarApp.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.DeferredWidget(
          _i2.loadLibrary,
          () => _i2.MostrarApp(),
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute({List<_i3.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MostrarApp]
class MostrarApp extends _i3.PageRouteInfo<void> {
  const MostrarApp({List<_i3.PageRouteInfo>? children})
      : super(
          MostrarApp.name,
          initialChildren: children,
        );

  static const String name = 'MostrarApp';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
