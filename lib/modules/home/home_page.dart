import 'package:flutter/material.dart';
import 'package:split_it_ignite/modules/home/widgets/box_money_widget/box_money_widget.dart';

import '../../domain/login/model/user_model.dart';
import 'widgets/app_bar/app_bar_widget.dart';

class HomePage extends StatefulWidget {
  final UserModel user;
  const HomePage({Key? key, required this.user}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHomeWidget(
        onTap: () {},
        name: widget.user.name,
        photoUrl: widget.user.photoUrl,
        boxLeft: BoxMoneyWidget(color: Colors.black),
        boxRight: BoxMoneyWidget(color: Colors.red),
      ),
    );
  }
}
