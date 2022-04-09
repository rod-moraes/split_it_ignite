import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '/core/core.dart';

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
          preferredSize: const Size.fromHeight(204 + 78),
          child: SingleChildScrollView(
            child: SizedBox(
              height: 204 + 78,
              child: Stack(
                children: [
                  Container(
                    decoration:
                        BoxDecoration(gradient: AppTheme.gradients.background),
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    height: 204,
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        ListTile(
                          contentPadding: const EdgeInsets.only(
                              left: 8.0, right: 8.0, top: 47),
                          title: Text(
                              name.split(" ")[0][0].toUpperCase() +
                                  name.split(" ")[0].substring(1).toLowerCase(),
                              style: AppTheme.textStyles.appBarTitle),
                          leading: Container(
                            width: 56,
                            height: 56,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(photoUrl),
                              ),
                            ),
                          ),
                          trailing: Material(
                            color: Colors.transparent,
                            child: Container(
                              width: 48,
                              height: 56,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: AppTheme.colors.borderGradient,
                                ),
                              ),
                              child: IconButton(
                                onPressed: onTap,
                                icon: Icon(
                                  Icons.add,
                                  color: AppTheme.colors.iconGradient,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                      alignment: const Alignment(0, 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [boxLeft, boxRight],
                      )),
                ],
              ),
            ),
          ),
        );
}
