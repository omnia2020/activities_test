import 'package:activities/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:io';

import 'app_startup_provider.dart';
import 'src/core/constants/adaptive.dart';
import 'src/core/themes/app_themes.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  AdaptiveUi.init();
  await await FlutterFlowTheme.initialize();
  final ProviderContainer container = ProviderContainer();
  await container.read(appStartupProvider.future);

  runApp(UncontrolledProviderScope(
    container: container,
    child: const App(),
  ));
}
