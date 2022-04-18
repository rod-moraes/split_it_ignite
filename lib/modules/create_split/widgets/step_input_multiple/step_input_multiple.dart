import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../../shared/settings_widgets/text_form_custom/text_form_custom.dart';

class StepInputMultiple extends StatelessWidget {
  const StepInputMultiple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 14),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("1", style: AppTheme.textStyles.textSimpleOpacity),
              SizedBox(width: 24),
              Expanded(
                flex: 3,
                child: TextFormCustom(
                  contentPadding: EdgeInsets.zero,
                  onChanged: (value) {},
                  divider: false,
                  text: '',
                  maxLines: 1,
                  hintText: "Ex: Picanha",
                  textAlign: TextAlign.left,
                  textStyle: AppTheme.textStyles.textSimpleBold,
                  focusedBorderColor: AppTheme.colors.add,
                ),
              ),
              SizedBox(width: 24),
              Expanded(
                flex: 2,
                child: TextFormCustom(
                  onChanged: (value) {},
                  divider: false,
                  contentPadding: EdgeInsets.zero,
                  text: '',
                  maxLines: 1,
                  hintText: "R\$ 0,00",
                  textAlign: TextAlign.right,
                  textStyle: AppTheme.textStyles.textSimpleBold,
                  focusedBorderColor: AppTheme.colors.add,
                ),
              ),
              const SizedBox(width: 4),
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(24),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Icon(Icons.delete_outline),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Divider(
              color: AppTheme.colors.divider,
              height: 24,
            ),
          ),
        ],
      ),
    );
  }
}
