import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';

class ButtonAddAppBar extends StatelessWidget {
  final VoidCallback onTap;
  const ButtonAddAppBar({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        width: 48,
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppTheme.colors.borderGradient,
          ),
        ),
        child: IconButton(
          onPressed: onTap,
          icon: Icon(
            Icons.add,
            color: AppTheme.colors.iconGradient,
          ),
        ),
      ),
    );
  }
}
