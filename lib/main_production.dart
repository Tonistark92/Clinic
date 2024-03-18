import 'package:clinic/core/di/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'clinc_app.dart';
import 'core/routing/app_router.dart';

Future<void> main() async {
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(ClinicApp(
    appRouter: AppRouter(),
  ));
}
