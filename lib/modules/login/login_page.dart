import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:sizer/sizer.dart';
import 'package:split_it_ignite/core/core.dart';
import 'package:split_it_ignite/modules/login/login_controller.dart';

import '../../i18n/i18n_const.dart';
import 'login_state.dart';
import 'widgets/button_social/button_social_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginController _loginController = LoginController();

  final AppConfigController configController = AppConfigController();
  @override
  void initState() {
    _loginController.autoRun(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool dark = configController.controllerAppTheme.themeMode == ThemeMode.dark;
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 199,
              child: Text(
                "Divida contas com seus amigos",
                style: AppTheme.textStyles.gradientTitle,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 232,
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Image.asset(
                      AppTheme.images.emoji,
                      height: 36,
                    ),
                    title: Text("Faça seu login com uma das contas abaixo",
                        style: AppTheme.textStyles.textSimple
                            .copyWith(height: 26 / 16)),
                  ),
                ),
                const SizedBox(height: 32),
                Observer(builder: (context) {
                  Widget button = (_loginController.loginState
                          is LoginStateLoading)
                      ? SizedBox(
                          height: 26.4.h,
                          child:
                              const Center(child: CircularProgressIndicator()))
                      : Column(
                          children: [
                            ButtonSocialWidget(
                              text: I18nConst.textButtonGoogle,
                              tooltip: I18nConst.textTooltipGoogle,
                              imagePath: AppTheme.images.iconGoogle,
                              onTap: () => (_loginController.loginState
                                      is LoginStateLoading)
                                  ? null
                                  : _loginController.googleSignIn(),
                            ),
                            SizedBox(height: 1.4.h),
                            ButtonSocialWidget(
                              text: I18nConst.textButtonApple,
                              tooltip: I18nConst.textTooltipApple,
                              imagePath: AppTheme.images.iconApple,
                              onTap: () async => (_loginController.loginState
                                      is LoginStateLoading)
                                  ? null
                                  : await configController.controllerAppTheme
                                      .setThemeMode(
                                      dark ? ThemeMode.light : ThemeMode.dark,
                                    ),
                            ),
                          ],
                        );

                  return AnimatedSwitcher(
                    duration: const Duration(milliseconds: 500),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) =>
                            SizeTransition(child: child, sizeFactor: animation),
                    child: button,
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
