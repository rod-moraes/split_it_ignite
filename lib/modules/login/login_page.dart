import 'package:flutter/material.dart';
import 'package:split_it_ignite/core/core.dart';

import 'widgets/button_social/button_social_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
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
                // Row(children: [
                //   Image.asset(
                //     AppTheme.images.emoji,
                //     height: 36,
                //   ),
                //   const SizedBox(width: 22),
                //   Flexible(
                //     child: SizedBox(
                //         width: 174,
                //         child: Text("Faça seu login com uma das contas abaixo",
                //             style: AppTheme.textStyles.textSimple
                //                 .copyWith(height: 26 / 16))),
                //   ),
                // ]),
                const SizedBox(height: 32),
                ButtonSocialWidget(
                  text: "Entrar com Google",
                  imagePath: AppTheme.images.iconGoogle,
                  onTap: () {
                    print("Google");
                  },
                ),
                const SizedBox(height: 12),
                ButtonSocialWidget(
                  text: "Entrar com Apple",
                  imagePath: AppTheme.images.iconApple,
                  onTap: () {
                    print("Apple");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
