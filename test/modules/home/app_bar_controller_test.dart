import 'package:flutter_test/flutter_test.dart';
import 'package:mobx/mobx.dart' as mobx;
import 'package:mocktail/mocktail.dart' as mocktail;
import 'package:split_it_ignite/domain/event/model/dashboard_model.dart';
import 'package:split_it_ignite/domain/event/repository/event_repository.dart';
import 'package:split_it_ignite/modules/home/widgets/bottom_app_bar/bottom_app_bar_controller.dart';
import 'package:split_it_ignite/modules/home/widgets/bottom_app_bar/bottom_app_bar_state.dart';

class EventRepositoryMock extends mocktail.Mock implements IEventRepository {}

void main() {
  late BottomAppBarController bottomAppBarController;
  late IEventRepository eventRepository;
  late DashboardModel dashboardModel;
  setUp(() {
    eventRepository = EventRepositoryMock();
    bottomAppBarController = BottomAppBarController(
      eventRepository: eventRepository,
    );
    dashboardModel = DashboardModel(receive: 100, send: 200);
  });

  test('Testando getDashboards Success', () async {
    final states = <BottomAppBarState>[];
    mobx.autorun((_) {
      states.add(bottomAppBarController.bottomAppBarState);
    });
    mocktail
        .when(eventRepository)
        .calls(#getDashboards)
        .thenAnswer((_) => Future.value(dashboardModel));

    await bottomAppBarController.getDashboards();
    expect(states[0], isInstanceOf<BottomAppBarStateEmpty>());
    expect(states[1], isInstanceOf<BottomAppBarStateLoading>());
    expect(states[2], isInstanceOf<BottomAppBarStateSuccess>());
    expect(
        (bottomAppBarController.bottomAppBarState as BottomAppBarStateSuccess)
            .dashboard,
        dashboardModel);
    expect(
        (bottomAppBarController.bottomAppBarState as BottomAppBarStateSuccess)
            .message,
        isInstanceOf<String>());
    expect(
        (bottomAppBarController.bottomAppBarState as BottomAppBarStateSuccess)
            .message,
        'Sucesso ao carregar o dashboard');
  });
  test('Testando getDashboards Failure', () async {
    final states = <BottomAppBarState>[];
    mobx.autorun((_) {
      states.add(bottomAppBarController.bottomAppBarState);
    });
    mocktail
        .when(eventRepository)
        .calls(#getDashboards)
        .thenThrow('Erro no getDashboards');

    await bottomAppBarController.getDashboards();
    expect(states[0], isInstanceOf<BottomAppBarStateEmpty>());
    expect(states[1], isInstanceOf<BottomAppBarStateLoading>());
    expect(states[2], isInstanceOf<BottomAppBarStateFailure>());
    expect(
        (bottomAppBarController.bottomAppBarState as BottomAppBarStateFailure)
            .message,
        isInstanceOf<String>());
    expect(
        (bottomAppBarController.bottomAppBarState as BottomAppBarStateFailure)
            .message,
        'Erro no getDashboards');
  });
}
