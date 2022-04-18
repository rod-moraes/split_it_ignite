import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../../shared/settings_widgets/text_form_custom/text_form_custom.dart';
import '../../widgets/step_title/step_title_widget.dart';

class StepTwo extends StatelessWidget {
  final Function(String) onChanged;
  final String initialValueEventName;
  const StepTwo({
    Key? key,
    required this.onChanged,
    required this.initialValueEventName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const StepTitleWidget(
            title: "Com quem",
            subtitle: "você quer dividir?",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64),
            child: TextFormCustom(
              onChanged: (value) => onChanged(value),
              text: initialValueEventName,
              maxLines: 1,
              hintText: "Nome da pessoa",
              textAlign: TextAlign.center,
              textStyle: AppTheme.textStyles.textSimpleBold,
              contentPadding: const EdgeInsets.only(bottom: 16),
              focusedBorderColor: AppTheme.colors.add,
            ),
          ),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
