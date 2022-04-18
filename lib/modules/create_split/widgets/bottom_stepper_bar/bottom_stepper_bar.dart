import 'package:flutter/material.dart';
import '../../../../core/core.dart';
import '../stepper_next_button/stepper_next_button.dart';

class BottomStepperBarWidget extends StatelessWidget {
  final bool enabledButtons;
  final VoidCallback onTapCancel;
  final VoidCallback onTapNext;
  const BottomStepperBarWidget({
    Key? key,
    this.enabledButtons = false,
    required this.onTapCancel,
    required this.onTapNext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppTheme.colors.background,
          border: Border(
              top: BorderSide(
            color: AppTheme.colors.border,
            width: 1.0,
            style: BorderStyle.solid,
          ))),
      height: 60,
      child: Row(
        children: [
          StepperNextButtonWidget(
            label: "CANCELAR",
            onTap: onTapCancel,
            disabled: !enabledButtons,
          ),
          VerticalDivider(
            thickness: 1,
            color: AppTheme.colors.border,
            width: 1,
          ),
          StepperNextButtonWidget(
            label: "CONTINUAR",
            onTap: onTapNext,
            disabled: !enabledButtons,
          ),
        ],
      ),
    );
  }
}
