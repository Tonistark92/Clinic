import 'package:flutter/material.dart';

import 'clinc_app.dart';
import 'core/routing/app_router.dart';

void main() {
  runApp(ClinicApp(
    appRouter: AppRouter(),
  ));
}