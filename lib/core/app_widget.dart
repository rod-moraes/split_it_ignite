import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:localization/localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sizer/sizer.dart';

import 'core.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);
  final AppConfigController _controllerConfig = AppConfigController();
  final AppThemeController _controllerTheme = AppThemeController();

  @override
  Widget build(BuildContext context) {
    // SIZER É UM WIDGET QUE DEIXA FAZER TODOS OS TIPOS DE CONTROLE DE LAYOUT
    return Sizer(builder: (context, orientation, deviceType) {
      // OBSERVER VAI FICAR OBSERVANDO AS ALTERAÇÕES DO TEMA
      return Observer(builder: (_) {
        _controllerConfig.locale;
        return MaterialApp(
          supportedLocales: const [
            Locale('pt', 'BR'),
            Locale('es', 'ES'),
            Locale('en', 'US'),
          ],
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            LocalJsonLocalization.delegate,
          ],
          debugShowCheckedModeBanner: false,
          title: "Split.It",
          themeMode: _controllerTheme.themeMode,
          onGenerateRoute: RouterClass.generateRoute,
        );
      });
    });
  }
}
