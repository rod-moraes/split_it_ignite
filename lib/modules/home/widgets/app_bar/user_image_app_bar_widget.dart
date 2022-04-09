import 'package:flutter/material.dart';

class UserImageAppBar extends StatelessWidget {
  final String photoUrl;
  const UserImageAppBar({Key? key, required this.photoUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(photoUrl),
        ),
      ),
    );
  }
}
