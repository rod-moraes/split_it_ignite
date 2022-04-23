import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import 'button_add_app_bar_widget.dart';
import 'user_image_app_bar_widget.dart';

class TitleAppBar extends StatelessWidget {
  String capitalize(String s) => s[0].toUpperCase() + s.substring(1);
  final String name;
  final String photoUrl;
  final VoidCallback onTap;
  const TitleAppBar({
    Key? key,
    required this.name,
    required this.photoUrl,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 20),
      title: Text(
        name.split(" ")[0][0].toUpperCase() +
            name.split(" ")[0].substring(1).toLowerCase(),
        style: AppTheme.textStyles.appBarTitleGradient,
      ),
      leading: UserImageAppBar(photoUrl: photoUrl),
      trailing: ButtonAddAppBar(onTap: onTap),
    );
  }
}
