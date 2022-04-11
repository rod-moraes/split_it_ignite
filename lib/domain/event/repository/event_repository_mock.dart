import '../model/dashboard_model.dart';
import '../model/event_model.dart';
import 'event_repository.dart';

class EventRepositoryMock implements IEventRepository {
  @override
  Future<DashboardModel> getDashboards() async {
    await Future.delayed(const Duration(seconds: 2));
    return DashboardModel(receive: 100, send: 100);
  }

  @override
  Future<List<EventModel>> getEvents() async {
    await Future.delayed(const Duration(seconds: 5));
    return [
      EventModel(
          title: "Churrasco", created: DateTime.now(), value: 35, people: 12),
      EventModel(
          title: "Churrasco", created: DateTime.now(), value: -35, people: 1),
      EventModel(
          title: "Churrasco", created: DateTime.now(), value: 150, people: 2),
      EventModel(
          title: "Churrasco", created: DateTime.now(), value: -55, people: 1),
      EventModel(
          title: "Churrasco", created: DateTime.now(), value: 35, people: 12),
      EventModel(
          title: "Churrasco", created: DateTime.now(), value: 35, people: 12),
      EventModel(
          title: "Churrasco", created: DateTime.now(), value: 35, people: 12),
      EventModel(
          title: "Churrasco", created: DateTime.now(), value: 35, people: 12),
      EventModel(
          title: "Churrasco", created: DateTime.now(), value: 35, people: 12),
      EventModel(
          title: "Churrasco", created: DateTime.now(), value: 35, people: 12),
      EventModel(
          title: "Churrasco", created: DateTime.now(), value: 35, people: 12),
      EventModel(
          title: "Churrasco", created: DateTime.now(), value: 35, people: 12),
      EventModel(
          title: "Churrasco", created: DateTime.now(), value: 35, people: 12),
    ];
  }
}
