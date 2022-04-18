import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:split_it_ignite/modules/create_split/steps/step_two/step_two.dart';

import '../../core/core.dart';
import 'create_split_controller.dart';
import 'steps/step_one/step_one.dart';
import 'steps/step_three/step_three.dart';
import 'widgets/app_bar/app_bar_create_split.dart';
import 'widgets/bottom_stepper_bar/bottom_stepper_bar.dart';

class CreateSplitPage extends StatefulWidget {
  const CreateSplitPage({Key? key}) : super(key: key);

  @override
  State<CreateSplitPage> createState() => _CreateSplitPageState();
}

class _CreateSplitPageState extends State<CreateSplitPage> {
  late CreateSplitController createSplitController;
  late List<Widget> pages;
  @override
  void initState() {
    createSplitController = CreateSplitController();
    pages = [
      Observer(builder: (_) {
        return StepOne(
          initialValueEventName: createSplitController.eventName,
          onChanged: (value) => createSplitController.setEventName(value),
        );
      }),
      Observer(builder: (_) {
        return StepTwo(
          initialValueEventName: createSplitController.eventName,
          onChanged: (value) => createSplitController.setEventName(value),
        );
      }),
      Observer(builder: (_) {
        return StepThree();
      }),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: AppBar().preferredSize,
        child: Observer(builder: (_) {
          return AppBarCreateSplit(
            position: createSplitController.indexNavigation,
            size: pages.length,
            backButton: () => createSplitController.backStep(context),
          );
        }),
      ),
      backgroundColor: AppTheme.colors.background,
      body: Stack(
        children: [
          Observer(builder: (_) => pages[createSplitController.index]),
          Align(
            alignment: Alignment.bottomCenter,
            child: Observer(builder: (_) {
              return BottomStepperBarWidget(
                enabledButtons: createSplitController.enableNavigateButton,
                onTapCancel: () {},
                onTapNext: () => createSplitController.nextStep(),
              );
            }),
          ),
        ],
      ),
    );
  }
}
