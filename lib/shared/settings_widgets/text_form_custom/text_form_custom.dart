import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../core/core.dart';

class TextFormCustom extends StatelessWidget {
  final Function(String)? onChanged;
  final String text;
  final String? label;
  final String? hintText;
  final TextAlign textAlign;
  final TextStyle? textStyle;
  final EdgeInsets? contentPadding;
  final Color? focusedBorderColor;
  final int? maxLength;
  final int? maxLines;
  final bool expands;
  final bool flexible;
  final bool divider;
  final bool disable;
  final bool disableForm;

  const TextFormCustom({
    Key? key,
    this.onChanged,
    required this.text,
    this.divider = true,
    this.disable = false,
    this.disableForm = false,
    this.flexible = false,
    this.textAlign = TextAlign.left,
    this.label,
    this.hintText,
    this.maxLength,
    this.expands = false,
    this.textStyle,
    this.contentPadding,
    this.focusedBorderColor,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle styleText;
    if (disableForm) {
      styleText = AppTheme.textStyles.textSimple;
    } else if (disable) {
      styleText = AppTheme.textStyles.textSimple;
    } else {
      styleText = AppTheme.textStyles.textSimple;
    }

    InputBorder border = divider
        ? UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppTheme.colors.divider,
              width: 1,
            ),
          )
        : InputBorder.none;

    Widget textfield = TextFormField(
      readOnly: disable || disableForm,
      maxLength: maxLength,
      expands: expands,
      maxLines: maxLines,
      textAlign: textAlign,
      initialValue: Bidi.stripHtmlIfNeeded(text.replaceAll("<br />", "\n")),
      keyboardType:
          (maxLines ?? 2) > 1 ? TextInputType.multiline : TextInputType.text,
      style: textStyle ?? styleText,
      cursorColor: AppTheme.colors.textBold,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: textStyle ?? styleText,
        hintText: hintText,
        isDense: true,
        hintStyle: disable
            ? AppTheme.textStyles.textSimple
            : AppTheme.textStyles.textSimple,
        border: border,
        contentPadding: contentPadding,
        enabledBorder: border,
        focusedBorder: border.copyWith(
            borderSide: border.borderSide.copyWith(color: focusedBorderColor)),
      ),
      onChanged: onChanged,
    );

    return flexible ? Flexible(child: textfield) : textfield;
  }
}
