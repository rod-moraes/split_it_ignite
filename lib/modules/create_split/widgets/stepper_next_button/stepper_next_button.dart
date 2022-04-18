import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class StepperNextButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final bool disabled;

  const StepperNextButtonWidget({
    Key? key,
    required this.label,
    required this.onTap,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: double.infinity,
        child: TextButton(
          onPressed: disabled ? null : onTap,
          child: Text(
            label,
            style: disabled
                ? AppTheme.textStyles.subtitleSimpleOpacity
                : AppTheme.textStyles.textButton,
          ),
        ),
      ),
    );
  }
}
