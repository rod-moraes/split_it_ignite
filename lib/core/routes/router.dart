import 'package:flutter/material.dart';
import 'package:split_it_ignite/core/config/app_config_page.dart';
import 'package:split_it_ignite/modules/create_split/create_split_page.dart';
import 'package:split_it_ignite/modules/splash/splash_page.dart';
import 'package:split_it_ignite/modules/login/login_page.dart';

import '../../domain/event/model/event_model.dart';
import '../../domain/login/model/user_model.dart';
import '../../modules/edit_split/edit_split_page.dart';
import '../../modules/home/home_page.dart';

class RouterClass {
  //STRINGS DAS ROTAS
  static const String initial = "/";
  static const String splash = "/splash";
  static const String login = "/login";
  static const String home = "/home";
  static const String createSplit = "/create_split";
  static const String editSplit = "/edit_split";

  //FUNÇÃO DE GERAÇÃO DE ROTAS
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    // Map<String, dynamic> arguments = settings.arguments as Map<String, dynamic>;
    //PROCURA A ROTA
    switch (routeSettings.name) {
      //ROTA DA SPLASH
      case splash:
        return MaterialPageRoute(
            builder: (_) => SplashPage(redirect: true, key: UniqueKey()));

      case login:
        return MaterialPageRoute(builder: (_) => const LoginPage());

      case createSplit:
        return MaterialPageRoute(builder: (_) => const CreateSplitPage());

      case editSplit:
        Map<String, dynamic> arguments =
            routeSettings.arguments as Map<String, dynamic>;
        EventModel event = arguments["event"];
        return MaterialPageRoute(builder: (_) => EditSplitPage(event: event));

      case home:
        Map<String, dynamic> arguments =
            routeSettings.arguments as Map<String, dynamic>;
        UserModel user = arguments["user"];
        return MaterialPageRoute(builder: (_) => HomePage(user: user));

      //ROTA COM INICIAL DE CONFIGURAÇÕES
      case initial:
        return MaterialPageRoute(builder: (_) => const AppConfigPage());

      //ROTA CASO NÃO ACHE ROTA
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
                child: Text('Não há rota definida para ${routeSettings.name}')),
          ),
        );
    }
  }
}
