// main.dart

import 'package:flutter/material.dart';
import 'package:micro_app_formulario/routes/micro_app_formulario_router.dart';
import 'package:micro_app_formulario/utils/storage.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MicroAppFormularioRouter appRouter = MicroAppFormularioRouter();
    return MaterialApp.router(routerConfig: appRouter.config());
  }
}
