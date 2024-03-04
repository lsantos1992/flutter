import 'package:base_web/routes/web_route.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:micro_core/micro_core.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    BaseAppRouter baseAppRouter = BaseAppRouter();
    return MaterialApp.router(
      routerConfig: baseAppRouter.config(),
    );
  }
}
