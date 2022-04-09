import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class MoneyIconWidget extends StatelessWidget {
  final bool isRecieved;
  final double width;
  final double height;
  const MoneyIconWidget({
    Key? key,
    required this.isRecieved,
    this.width = 48,
    this.height = 48,
  }) : super(key: key);

  Color get color => isRecieved
      ? AppTheme.colors.receiveOpacity
      : AppTheme.colors.payableOpacity;

  String get imagePath =>
      isRecieved ? AppTheme.images.iconRecieve : AppTheme.images.iconSend;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(8),
      child: FittedBox(
        child: Image.asset(imagePath),
      ),
    );
  }
}
