import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:split_it_ignite/modules/home/widgets/bottom_app_bar/bottom_app_bar_state.dart';

import '../box_money_widget/box_money_widget.dart';
import 'bottom_app_bar_controller.dart';

class BottomAppBarWidget extends StatefulWidget {
  const BottomAppBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomAppBarWidget> createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  late BottomAppBarController bottomAppBarController;
  @override
  void initState() {
    bottomAppBarController = BottomAppBarController();
    bottomAppBarController.autoRun(context);
    bottomAppBarController.getDashboards();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      if (bottomAppBarController.bottomAppBarState
          is BottomAppBarStateSuccess) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BoxMoneyWidget(value: bottomAppBarController.dashboard!.receive),
            BoxMoneyWidget(value: bottomAppBarController.dashboard!.send * -1),
          ],
        );
      } else {
        return Container();
      }
    });
  }
}
