import 'package:base_web/routes/web_route.dart';
import 'package:flutter/material.dart';

//Esse pacote é exclusivo para web
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_web_plugins/url_strategy.dart';

void main() async {
  if (kIsWeb) {
    usePathUrlStrategy();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    BaseAppRouter appRouter = BaseAppRouter();
    return MaterialApp.router(
      routerConfig: appRouter.config(),
    );
  }
}
