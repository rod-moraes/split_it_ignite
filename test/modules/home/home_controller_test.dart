import 'package:flutter_test/flutter_test.dart';
import 'package:mobx/mobx.dart' as mobx;
import 'package:mocktail/mocktail.dart' as mocktail;
import 'package:split_it_ignite/domain/event/model/dashboard_model.dart';
import 'package:split_it_ignite/domain/event/model/event_model.dart';
import 'package:split_it_ignite/domain/event/repository/event_repository.dart';
import 'package:split_it_ignite/i18n/i18n_const.dart';
import 'package:split_it_ignite/modules/home/home_controller.dart';
import 'package:split_it_ignite/modules/home/home_state.dart';

class EventRepositoryMock extends mocktail.Mock implements IEventRepository {}

void main() {
  late HomeController homeController;
  late IEventRepository eventRepository;
  late List<EventModel> events;
  setUp(() {
    eventRepository = EventRepositoryMock();
    homeController = HomeController(
      eventRepository: eventRepository,
    );
    events = [
      EventModel(
          created: DateTime.now(), people: 2, title: 'Churrasco', value: 100),
      EventModel(
          created: DateTime.now(), people: 5, title: 'Medico', value: 300),
      EventModel(
          created: DateTime.now(), people: 3, title: 'Sushi', value: -600),
    ];
  });

  test('Testando getEvents Success', () async {
    final states = <HomeState>[];
    mobx.autorun((_) {
      states.add(homeController.homeState);
    });
    mocktail
        .when(eventRepository)
        .calls(#getEvents)
        .thenAnswer((_) => Future.value(events));

    await homeController.getEvents();
    expect(states[0], isInstanceOf<HomeStateEmpty>());
    expect(states[1], isInstanceOf<HomeStateLoading>());
    expect(states[2], isInstanceOf<HomeStateSuccess>());
    expect((homeController.homeState as HomeStateSuccess).events, events);
    expect((homeController.homeState as HomeStateSuccess).message,
        isInstanceOf<String>());
    expect((homeController.homeState as HomeStateSuccess).message,
        'Sucesso ao carregar os eventos');
  });
  test('Testando getEvents Failure', () async {
    final states = <HomeState>[];
    mobx.autorun((_) {
      states.add(homeController.homeState);
    });
    mocktail
        .when(eventRepository)
        .calls(#getEvents)
        .thenThrow('Erro no getEvents');

    await homeController.getEvents();
    expect(states[0], isInstanceOf<HomeStateEmpty>());
    expect(states[1], isInstanceOf<HomeStateLoading>());
    expect(states[2], isInstanceOf<HomeStateFailure>());
    expect((homeController.homeState as HomeStateFailure).message,
        isInstanceOf<String>());
    expect((homeController.homeState as HomeStateFailure).message,
        'Erro no getEvents');
  });
}
