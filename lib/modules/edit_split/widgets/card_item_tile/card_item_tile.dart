import 'package:flutter/material.dart';

import 'package:split_it_ignite/core/utils/format_string/format_string_utils.dart';

import '../../../../core/core.dart';

class CardItemTileWidget extends StatelessWidget {
  final String title;
  final double value;
  final bool divider;
  const CardItemTileWidget({
    Key? key,
    required this.title,
    required this.value,
    this.divider = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12),
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
                    text: FormatStringUtils.formatMoney(value),
                    style: AppTheme.textStyles.textSimpleSemiBold,
                  ),
                ]))
          ],
        ),
        const SizedBox(height: 12),
        divider
            ? Divider(color: Color(0x33434343), thickness: 1, height: 1)
            : Container(),
      ],
    );
  }
}
