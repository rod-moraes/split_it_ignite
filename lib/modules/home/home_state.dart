import '../../domain/event/model/event_model.dart';

abstract class HomeState {}

class HomeStateEmpty extends HomeState {}

class HomeStateLoading extends HomeState {}

class HomeStateFailure extends HomeState {
  final String message;
  HomeStateFailure({
    required this.message,
  });
}

class HomeStateSuccess extends HomeState {
  final List<EventModel> events;
  final String message;
  HomeStateSuccess({
    required this.events,
    required this.message,
  });
}
