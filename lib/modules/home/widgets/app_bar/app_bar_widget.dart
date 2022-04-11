import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '/core/core.dart';
import 'button_add_app_bar_widget.dart';
import 'user_image_app_bar_widget.dart';

class AppBarHomeWidget extends PreferredSize {
  String capitalize(String s) => s[0].toUpperCase() + s.substring(1);
  final String name;
  final String photoUrl;
  final VoidCallback onTap;
  final Widget boxLeft;
  final Widget boxRight;
  AppBarHomeWidget({
    Key? key,
    required this.name,
    required this.photoUrl,
    required this.onTap,
    required this.boxLeft,
    required this.boxRight,
  }) : super(
          key: key,
          preferredSize: const Size.fromHeight(224 + 80),
          child: SizedBox(
            height: 224 + 80,
            child: Stack(
              children: [
                Container(
                  decoration:
                      BoxDecoration(gradient: AppTheme.gradients.background),
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  height: 224,
                  width: double.maxFinite,
                  child: ListTile(
                    contentPadding:
                        const EdgeInsets.only(left: 8.0, right: 8.0, top: 57),
                    title: Text(
                      name.split(" ")[0][0].toUpperCase() +
                          name.split(" ")[0].substring(1).toLowerCase(),
                      style: AppTheme.textStyles.appBarTitle,
                    ),
                    leading: UserImageAppBar(photoUrl: photoUrl),
                    trailing: ButtonAddAppBar(onTap: onTap),
                  ),
                ),
                Align(
                    alignment: const Alignment(0, 1),
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          height: 80,
                          decoration: BoxDecoration(
                            gradient: AppTheme.gradients.homeEventList,
                          ),
                        ))
                      ],
                    )),
                Align(
                    alignment: const Alignment(0, 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [boxLeft, boxRight],
                    )),
              ],
            ),
          ),
        );
}
