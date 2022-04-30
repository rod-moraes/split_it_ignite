import 'package:flutter/material.dart';

import 'package:split_it_ignite/core/utils/format_string/format_string_utils.dart';

import '../../../../core/core.dart';
import '../checkbox_pay_tile/checkbox_pay_tile.dart';

class CardPersonPay extends StatefulWidget {
  final String name;
  final String avatarLink;
  final double value;
  final bool initialValue;
  final Function(bool) onTap;
  const CardPersonPay({
    Key? key,
    required this.name,
    required this.avatarLink,
    required this.value,
    required this.initialValue,
    required this.onTap,
  }) : super(key: key);

  @override
  State<CardPersonPay> createState() => _CardPersonPayState();
}

class _CardPersonPayState extends State<CardPersonPay> {
  late bool isChecked;
  late TextStyle style;
  @override
  void initState() {
    isChecked = widget.initialValue;
    modifyCheckbox(isChecked);
    super.initState();
  }

  void modifyCheckbox(bool value) {
    style = value
        ? AppTheme.textStyles.recieveSubtitle
        : AppTheme.textStyles.payableSubtitle;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        isChecked = !isChecked;
        widget.onTap(isChecked);
        modifyCheckbox(isChecked);
        setState(() {});
      },
      borderRadius: BorderRadius.circular(5),
      child: ListTile(
        dense: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12),
        leading: Container(
          foregroundDecoration: BoxDecoration(
            color: Colors.grey,
            backgroundBlendMode: BlendMode.saturation,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(
            widget.avatarLink,
            width: 40,
            height: 40,
          ),
        ),
        title: Text(
          widget.name,
          style: AppTheme.textStyles.textSimplePerson,
        ),
        subtitle: Text.rich(
          TextSpan(
              text: "R\$ ",
              style: style.copyWith(
                fontWeight: FontWeight.normal,
              ),
              children: [
                TextSpan(
                  text: FormatStringUtils.formatMoney(widget.value),
                  style: style.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
        ),
        trailing: CheckboxPayTile(isChecked: isChecked),
      ),
    );
  }
}
