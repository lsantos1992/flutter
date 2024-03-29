import 'package:flutter/foundation.dart' as foundation;
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:micro_core/micro_core.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('/home/mostrar');

@RoutePage(deferredLoading: true)
class FormularioApp extends StatefulWidget {
  const FormularioApp({super.key});

  @override
  _FormularioAppState createState() => _FormularioAppState();
}

class _FormularioAppState extends State<FormularioApp> {
  final TextEditingController _usuarioController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usuarioController,
              decoration: const InputDecoration(labelText: 'Usuário'),
            ),
            TextField(
              controller: _senhaController,
              decoration: const InputDecoration(labelText: 'Senha'),
              obscureText: true, // Para ocultar a senha digitada
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                var storage = Storage();
                storage.save(_usuarioController.text, _senhaController.text);

                // Ao pressionar o botão, enviar as informações para o próximo widget
                if (foundation.kIsWeb) {
                  _launchUrl();
                } else {
                  AutoRouter.of(context).pushNamed('/home/mostrar');
                }
              },
              child: const Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url, webOnlyWindowName: '_self')) {
    throw Exception('Could not launch $_url');
  }
}
