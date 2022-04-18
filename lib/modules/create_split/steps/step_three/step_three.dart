import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../../shared/settings_widgets/text_form_custom/text_form_custom.dart';
import '../../widgets/step_input_multiple/step_input_multiple.dart';
import '../../widgets/step_title/step_title_widget.dart';

class StepThree extends StatelessWidget {
  const StepThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const StepTitleWidget(
            title: "Qual ou quais",
            subtitle: "ítens você quer dividir?",
          ),
          StepInputMultiple(),
          const SizedBox(height: 35),
        ],
      ),
    );
  }
}
