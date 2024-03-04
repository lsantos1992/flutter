import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:micro_core/micro_core.dart';

@RoutePage(deferredLoading: true)
class MostrarApp extends StatelessWidget {
  const MostrarApp({super.key});

  @override
  Widget build(BuildContext context) {
    final storage = Storage();
    return FutureBuilder(
      future: storage.get(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          var data = User();
          if (snapshot.data != null) {
            data = snapshot.data as User;
          }
          return Scaffold(
            appBar: AppBar(
              title: const Text('Dados do Formulário'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Usuário: ${data.getUser()}',
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Senha: ${data.getPassword()}',
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Carregando...'),
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
