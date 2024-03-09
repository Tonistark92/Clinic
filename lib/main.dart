import 'package:clinic/core/di/dependency_injection.dart';
import 'package:flutter/material.dart';

import 'clinc_app.dart';
import 'core/routing/app_router.dart';

void main() {
    setupGetIt();
  runApp(ClinicApp(
    appRouter: AppRouter(),
  ));
}