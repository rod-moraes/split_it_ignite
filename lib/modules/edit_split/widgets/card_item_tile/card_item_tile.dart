import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class CardItemTileWidget extends StatelessWidget {
  final String title;
  final double value;
  const CardItemTileWidget({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppTheme.textStyles.textSimpleSemiBold,
            ),
            Text.rich(TextSpan(
                text: "R\$ ",
                style: AppTheme.textStyles.textSimple,
                children: [
                  TextSpan(
                    text: "122,00",
                    style: AppTheme.textStyles.textSimpleSemiBold,
                  ),
                ]))
          ],
        ),
        SizedBox(height: 8),
        Divider(color: Colors.black),
        SizedBox(height: 8),
      ],
    );
  }
}
