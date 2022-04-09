import 'package:flutter/material.dart';
import 'package:split_it_ignite/core/core.dart';

import '../../domain/login/model/user_model.dart';
import '../../domain/login/usecase/login_usecase.dart';

class SplashController {
  SplashController({ILoginUseCase? authUseCase}) {
    _authUseCase = authUseCase ?? LoginUseCase();
  }
  late ILoginUseCase _authUseCase;

  // FUNÇÃO PARA REDIRECIONAR A SPLASH PARA LOGIN PAGE OU PARA NOTEPAGE
  void redirectSplash(BuildContext context) async {
    try {
      UserModel user = await _authUseCase.isConnectGoogle();
      await Future.delayed(const Duration(seconds: 3));
      Navigator.pushNamedAndRemoveUntil(
        context,
        RouterClass.home,
        (Route<dynamic> route) => false,
        arguments: {'user': user},
      );
    } catch (e) {
      await Future.delayed(const Duration(seconds: 3));
      Navigator.pushNamedAndRemoveUntil(
          context, RouterClass.login, (Route<dynamic> route) => false);
    }
  }
}
