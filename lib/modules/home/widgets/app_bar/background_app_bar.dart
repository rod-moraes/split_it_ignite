import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/core.dart';

class BackgroundAppBar extends StatelessWidget {
  final Widget bottomAppBar;
  final double heightBarWhite;
  final double statusBarHeight;
  const BackgroundAppBar({
    Key? key,
    required this.bottomAppBar,
    this.heightBarWhite = 78,
    required this.statusBarHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
            alignment: const Alignment(0, -1),
            child: Container(
              height: 20.h + statusBarHeight + 80 - heightBarWhite,
              decoration:
                  BoxDecoration(gradient: AppTheme.gradients.background),
            )),
        FlexibleSpaceBar(
          collapseMode: CollapseMode.none,
          titlePadding: EdgeInsets.zero,
          background: Align(
            alignment: const Alignment(0, 1),
            child: bottomAppBar,
          ),
        ),
      ],
    );
  }
}
