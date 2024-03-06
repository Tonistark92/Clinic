import 'package:flutter/material.dart';

import 'clinc_app.dart';
import 'core/routing/app_router.dart';

void main() {
  runApp(ClinicApp(
    appRouter: AppRouter(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),

      //development branch init
    );
  }
}
