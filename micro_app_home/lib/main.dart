import 'package:flutter/material.dart';
import 'package:flutter_web_poc/routes/app_router.dart';
import 'package:flutter_web_poc/utils/storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

//Esse pacote é exclusivo para web
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_web_plugins/url_strategy.dart';

void main() async {
  if (kIsWeb) {
    usePathUrlStrategy();
  }
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return MaterialApp.router(
      routerConfig: appRouter.config(),
    );
  }
}
