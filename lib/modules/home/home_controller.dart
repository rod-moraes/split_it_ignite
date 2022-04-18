import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:split_it_ignite/domain/event/repository/event_repository_mock.dart';

import '../../core/core.dart';
import '../../domain/event/model/event_model.dart';
import '../../domain/event/repository/event_repository.dart';
import '../../i18n/i18n_const.dart';
import 'home_state.dart';

part 'home_controller.g.dart';

class HomeController extends _HomeControllerBase with _$HomeController {
  HomeController({IEventRepository? eventRepository}) {
    _eventRepository = eventRepository ?? EventRepositoryMock();
  }
}

abstract class _HomeControllerBase with Store {
  late IEventRepository _eventRepository;

  @observable
  HomeState homeState = HomeStateEmpty();

  @observable
  ObservableList<EventModel> events = ObservableList<EventModel>();

  @action
  Future<void> _modifyHomeState(HomeState state) async => homeState = state;

  @action
  Future<void> getEvents() async {
    try {
      // LOGAR COM GOOGLE
      await _modifyHomeState(HomeStateLoading());
      List<EventModel> eventsModel = await _eventRepository.getEvents();
      events.addAll(eventsModel);
      await _modifyHomeState(HomeStateSuccess(
          events: eventsModel, message: 'Sucesso ao carregar os eventos'));
    } catch (error) {
      await _modifyHomeState(HomeStateFailure(message: error.toString()));
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
      if (homeState is HomeStateFailure) {
        String message = I18nConst.textErroSnackbar(
            [(homeState as HomeStateFailure).message]);
        showSnackBar(context, message, Colors.red);
      } else if (homeState is HomeStateSuccess) {
        String message = (homeState as HomeStateSuccess).message;
        showSnackBar(context, message, Colors.green);
      }
    });
  }
}
