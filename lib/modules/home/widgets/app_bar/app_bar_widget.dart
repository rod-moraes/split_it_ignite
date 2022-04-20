import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import '/core/core.dart';
import 'background_app_bar.dart';
import 'button_add_app_bar_widget.dart';
import 'title_app_bar.dart';
import 'user_image_app_bar_widget.dart';

class AppBarHomeWidget extends StatelessWidget {
  final String name;
  final String photoUrl;
  final VoidCallback onTap;
  final Widget bottomAppBar;
  final double statusBarHeight;
  const AppBarHomeWidget({
    Key? key,
    required this.name,
    required this.photoUrl,
    required this.onTap,
    required this.bottomAppBar,
    required this.statusBarHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle: AppTheme.colorStatus(isWhite: true),
      title: Container(
          height: statusBarHeight + 80,
          alignment: Alignment.bottomCenter,
          child: TitleAppBar(name: name, onTap: onTap, photoUrl: photoUrl)),
      elevation: 0,
      pinned: true,
      toolbarHeight: statusBarHeight + 76,
      expandedHeight: 20.h + statusBarHeight + 80,
      backgroundColor: AppTheme.colors.background,
      flexibleSpace: BackgroundAppBar(
          bottomAppBar: bottomAppBar, statusBarHeight: statusBarHeight),
    );
  }
}
