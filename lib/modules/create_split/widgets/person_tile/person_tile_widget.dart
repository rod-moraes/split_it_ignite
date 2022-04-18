import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class PersonTileWidget extends StatelessWidget {
  final String name;
  final bool isRemoved;
  final String pathImage;
  const PersonTileWidget({
    Key? key,
    required this.name,
    required this.isRemoved,
    required this.pathImage,
  }) : super(key: key);

  Color get colorButton =>
      isRemoved ? AppTheme.colors.add : AppTheme.colors.remove;

  Icon get iconButton =>
      Icon(isRemoved ? Icons.add : Icons.remove, color: colorButton);

  TextStyle get textName => isRemoved
      ? AppTheme.textStyles.textSimple
      : AppTheme.textStyles.textSimpleBold;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(height: 40, width: 40, child: Image.asset(pathImage)),
      title: Text(
        name,
        style: textName,
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: iconButton,
        splashRadius: 24,
      ),
    );
  }
}
