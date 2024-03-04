import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/foundation.dart' as foundation;

final Uri _url = Uri.parse('/formulario/');

@RoutePage(deferredLoading: true)
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            if (foundation.kIsWeb) {
              _launchUrl();
              return;
            } else {
              AutoRouter.of(context).pushNamed("/formulario");
            }
          },
          child: const Text('Abrir Formulário'),
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
