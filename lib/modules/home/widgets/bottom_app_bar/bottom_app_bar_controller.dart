import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:split_it_ignite/domain/event/repository/event_repository_mock.dart';

import '../../../../core/core.dart';
import '../../../../domain/event/model/dashboard_model.dart';
import '../../../../domain/event/repository/event_repository.dart';
import '../../../../i18n/i18n_const.dart';
import 'bottom_app_bar_state.dart';

part 'bottom_app_bar_controller.g.dart';

class BottomAppBarController extends _BottomAppBarControllerBase
    with _$BottomAppBarController {
  BottomAppBarController({IEventRepository? eventRepository}) {
    _eventRepository = eventRepository ?? EventRepositoryMock();
  }
}

abstract class _BottomAppBarControllerBase with Store {
  late IEventRepository _eventRepository;

  @observable
  BottomAppBarState bottomAppBarState = BottomAppBarStateEmpty();

  @observable
  DashboardModel? dashboard;

  @action
  Future<void> _modifyBottomAppBarState(BottomAppBarState state) async =>
      bottomAppBarState = state;

  @action
  Future<void> getDashboards() async {
    try {
      // LOGAR COM GOOGLE
      await _modifyBottomAppBarState(BottomAppBarStateLoading());
      DashboardModel dashboardModel = await _eventRepository.getDashboards();
      dashboard = dashboardModel;
      await _modifyBottomAppBarState(BottomAppBarStateSuccess(
          result: dashboardModel, message: 'Sucesso ao carregar o dashboard'));
    } catch (error) {
      await _modifyBottomAppBarState(
          BottomAppBarStateFailure(message: error.toString()));
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
    autorun((_) {
      if (bottomAppBarState is BottomAppBarStateFailure) {
        String message = I18nConst.textErroSnackbar(
            [(bottomAppBarState as BottomAppBarStateFailure).message]);
        showSnackBar(context, message, Colors.red);
      } else if (bottomAppBarState is BottomAppBarStateSuccess) {
        String message =
            (bottomAppBarState as BottomAppBarStateSuccess).message;
        showSnackBar(context, message, Colors.green);
      }
    });
  }
}
