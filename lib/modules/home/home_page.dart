import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:sizer/sizer.dart';
import 'package:split_it_ignite/domain/event/model/event_model.dart';
import 'package:split_it_ignite/modules/home/home_controller.dart';
import 'package:split_it_ignite/modules/home/home_state.dart';
import '../../core/core.dart';
import '../../domain/login/model/user_model.dart';
import 'widgets/app_bar/app_bar_widget.dart';
import 'widgets/app_bar/button_add_app_bar_widget.dart';
import 'widgets/app_bar/user_image_app_bar_widget.dart';
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
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: CustomScrollView(
        slivers: [
          MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: AppBarHomeWidget(
              onTap: () =>
                  Navigator.pushNamed(context, RouterClass.createSplit),
              statusBarHeight: statusBarHeight,
              name: widget.user.name,
              photoUrl: widget.user.photoUrl,
              bottomAppBar: const BottomAppBarWidget(),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 30)),
          Observer(builder: (context) {
            if (homeController.homeState is HomeStateSuccess) {
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) =>
                      EventTileWidget(event: homeController.events[index]),
                  childCount: homeController.events.length,
                ),
              );
            } else if (homeController.homeState is HomeStateLoading) {
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) => EventTileWidget(
                      event: EventModel(
                          created: DateTime.now(),
                          people: 2,
                          title: 'Churrasco',
                          value: 100),
                      isLoading: true),
                  childCount: 10,
                ),
              );
            }
            return Container();
          }),
        ],
      ),
    );
  }
}
