import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/format_string/format_string_utils.dart';
import '../../../../shared/shimmer_container/shimmer_container_widget.dart';
import '../money_icon_widget/money_icon_widget.dart';

class BoxMoneyWidget extends StatelessWidget {
  final double value;
  final bool isLoading;
  const BoxMoneyWidget({
    Key? key,
    required this.value,
    this.isLoading = false,
  }) : super(key: key);

  bool get isRecieved => value > 0;
  TextStyle get style => isRecieved
      ? AppTheme.textStyles.recieveTitle
      : AppTheme.textStyles.payableTitle;

  String get text => isRecieved ? "A receber" : "A pagar";

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 45.w,
      ),
      child: Container(
          width: 41.w,
          height: 20.h + 14,
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
              MoneyIconWidget(
                isRecieved: isRecieved,
                isLoading: isLoading,
                height: 8.h,
                width: 8.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (isLoading) ...const [
                    ShimmerContainerWidget(height: 20, width: 65),
                    SizedBox(height: 4),
                    ShimmerContainerWidget(height: 24, width: 98),
                  ] else ...[
                    Text(text, style: AppTheme.textStyles.subtitleMoney),
                    Text('R\$ ${FormatStringUtils.formatMoney(value)}',
                        style: style),
                  ]
                ],
              )
            ],
          )),
    );
  }
}
