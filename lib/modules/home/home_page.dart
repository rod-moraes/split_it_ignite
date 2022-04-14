import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:split_it_ignite/domain/event/model/event_model.dart';
import 'package:split_it_ignite/modules/home/home_controller.dart';
import 'package:split_it_ignite/modules/home/home_state.dart';
import 'package:split_it_ignite/modules/home/widgets/box_money_widget/box_money_widget.dart';

import '../../domain/login/model/user_model.dart';
import 'widgets/app_bar/app_bar_widget.dart';
import 'widgets/bottom_app_bar/bottom_app_bar_widget.dart';
import 'widgets/event_tile_widget/event_tile_widget.dart';

class HomePage extends StatefulWidget {
  final UserModel user;
  const HomePage({Key? key, required this.user}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeController homeController;

  @override
  void initState() {
    homeController = HomeController();
    homeController.getEvents();
    homeController.autoRun(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarHomeWidget(
        onTap: () {},
        name: widget.user.name,
        photoUrl: widget.user.photoUrl,
        bottomAppBar: const BottomAppBarWidget(),
      ),
      body: Observer(builder: (context) {
        if (homeController.homeState is HomeStateSuccess) {
          return ListView.builder(
              itemCount: homeController.events.length,
              padding: const EdgeInsets.only(top: 40 + 80 + 168),
              prototypeItem:
                  EventTileWidget(event: homeController.events.first),
              itemBuilder: (context, index) {
                return EventTileWidget(event: homeController.events[index]);
              });
        } else {
          return Container();
        }
      }),
    );
  }
}
