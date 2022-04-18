import 'package:flutter/widgets.dart';

import '../../../../core/core.dart';

class StepTitleWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final EdgeInsets padding;
  const StepTitleWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    this.padding = const EdgeInsets.symmetric(vertical: 40),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        children: [
          Text(title, style: AppTheme.textStyles.titleSimpleBold),
          Text(subtitle, style: AppTheme.textStyles.titleSimple),
        ],
      ),
    );
  }
}
