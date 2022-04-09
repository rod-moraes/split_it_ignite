import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/theme/app_theme.dart';

class BoxMoneyWidget extends StatelessWidget {
  final Color color;
  const BoxMoneyWidget({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 45.w,
      ),
      child: Container(
          width: 168,
          height: 156,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppTheme.colors.border),
            color: AppTheme.colors.background,
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 48,
                height: 48,
                color: AppTheme.colors.payableOpacity,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('A receber', style: AppTheme.textStyles.subtitleMoney),
                  Text('R\$ 330,00', style: AppTheme.textStyles.payableTitle),
                ],
              )
            ],
          )),
    );
  }
}
