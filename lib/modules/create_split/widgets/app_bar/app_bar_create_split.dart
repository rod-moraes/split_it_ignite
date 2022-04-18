import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/core.dart';

class AppBarCreateSplit extends StatelessWidget {
  final VoidCallback backButton;
  final int size;
  final int position;
  const AppBarCreateSplit({
    Key? key,
    required this.backButton,
    required this.size,
    required this.position,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppTheme.colorStatus(),
      child: Padding(
        padding: const EdgeInsets.only(top: 50, right: 24, left: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BackButton(
                color: AppTheme.colors.icon, onPressed: () => backButton()),
            Text.rich(
              TextSpan(
                  text: "0$position",
                  children: [
                    TextSpan(
                        text: " - 0$size",
                        style: AppTheme.textStyles.headerText),
                  ],
                  style: AppTheme.textStyles.headerTextContrast),
            ),
          ],
        ),
      ),
    );
  }
}
