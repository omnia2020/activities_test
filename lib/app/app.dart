import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../../src/core/helpers/session_manager.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../src/core/routes/app_router.dart';
import '../src/core/themes/app_themes.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();
  static void setLocale(BuildContext context, Locale newLocale) {
    _AppState? state = context.findAncestorStateOfType<_AppState>();
    state?.setLocale(newLocale);
  }
}

class _AppState extends ConsumerState<App> {
  final _appRouter = AppRouter();
  Locale? _locale;
  setLocale(Locale loc) async {
    await sessionManager.setLocale(localee: loc.languageCode);
    setState(() {
      _locale = loc;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );
    return ResponsiveApp(
      builder: (context) {
        return MaterialApp.router(
          title: 'Activities App',
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: _locale,
          supportedLocales: const [
            Locale('ar', 'SA'),
          ],
          themeMode: FlutterFlowTheme.themeMode,
          theme: ThemeData(
            scrollbarTheme: ScrollbarThemeData(
              thumbVisibility: WidgetStateProperty.all(false),
              trackVisibility: WidgetStateProperty.all(false),
              interactive: true,
              thumbColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.dragged)) {
                  return FlutterFlowTheme.of(context).whiteColor;
                }
                if (states.contains(WidgetState.hovered)) {
                  return FlutterFlowTheme.of(context).whiteColor;
                }
                return FlutterFlowTheme.of(context).whiteColor;
              }),
            ),
          ),
          darkTheme: ThemeData(
            scrollbarTheme: ScrollbarThemeData(
              thumbVisibility: WidgetStateProperty.all(false),
              trackVisibility: WidgetStateProperty.all(false),
              interactive: true,
              thumbColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.dragged)) {
                  return FlutterFlowTheme.of(context).whiteColor;
                }
                if (states.contains(WidgetState.hovered)) {
                  return FlutterFlowTheme.of(context).whiteColor;
                }
                return FlutterFlowTheme.of(context).whiteColor;
              }),
            ),
          ),
          routerConfig: _appRouter.config(
            navigatorObservers: () => [MyObserver()],
          ),
          builder: (BuildContext context, Widget? child) {
            if (child == null) {
              return Container();
            }
            return child;
          },
        );
      },
    );
  }
}
