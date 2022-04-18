import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../../core/core.dart';

part 'create_split_controller.g.dart';

class CreateSplitController extends _CreateSplitControllerBase
    with _$CreateSplitController {
  CreateSplitController() {}
}

abstract class _CreateSplitControllerBase with Store {
  @observable
  String eventName = "";

  @observable
  int index = 0;

  @computed
  int get indexNavigation => index + 1;

  @computed
  bool get enableNavigateButton => eventName.isNotEmpty;

  @action
  void setEventName(String newName) => eventName = newName;

  String eventNameNoRefresh() => eventName;

  @action
  void nextStep() {
    if (index < 2) index++;
  }

  @action
  void backStep(BuildContext context) {
    if (index > 0) {
      index--;
    } else {
      Navigator.pop(context);
    }
  }

  // FUNÇÃO PARA ABRIR O SNACKBAR
  void showSnackBar(BuildContext context, String text, Color color) {
    SnackBar snackBar = SnackBar(
      content: Text(
        text,
        textAlign: TextAlign.center,
        style: AppTheme.textStyles.textSnackBar,
      ),
      backgroundColor: color,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void autoRun(BuildContext context) {
    autorun((_) {});
  }
}
