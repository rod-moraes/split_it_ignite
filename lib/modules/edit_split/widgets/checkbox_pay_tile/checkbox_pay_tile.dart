import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class CheckboxPayTile extends StatelessWidget {
  final bool isChecked;
  const CheckboxPayTile({
    Key? key,
    required this.isChecked,
  }) : super(key: key);

  BorderRadius get border => BorderRadius.circular(5);
  BoxDecoration get boxDecoration => isChecked
      ? BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: border,
          color: const Color(0xff40B28C),
        )
      : BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: border,
          color: AppTheme.colors.background,
          border: Border.all(
            width: 1.5,
            color: const Color(0xffC0CCC9),
          ),
        );
  Color get boxColor =>
      isChecked ? const Color(0x2940B28C) : AppTheme.colors.dividerBar;

  Widget get iconCheck => isChecked
      ? const Icon(
          Icons.check,
          size: 14,
          color: Colors.white,
        )
      : const SizedBox(
          width: 14,
          height: 14,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: border,
      ),
      child: FittedBox(
        fit: BoxFit.none,
        child: Container(
          padding: const EdgeInsets.all(1),
          decoration: boxDecoration,
          child: iconCheck,
        ),
      ),
    );
  }
}
