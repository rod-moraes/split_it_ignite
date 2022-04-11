import '../model/dashboard_model.dart';
import '../model/event_model.dart';

abstract class IEventRepository {
  Future<List<EventModel>> getEvents();
  Future<DashboardModel> getDashboards();
}
