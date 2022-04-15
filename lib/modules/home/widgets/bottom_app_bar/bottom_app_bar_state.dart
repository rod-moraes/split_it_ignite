import '../../../../domain/event/model/dashboard_model.dart';

abstract class BottomAppBarState {}

class BottomAppBarStateEmpty extends BottomAppBarState {}

class BottomAppBarStateLoading extends BottomAppBarState {}

class BottomAppBarStateFailure extends BottomAppBarState {
  final String message;
  BottomAppBarStateFailure({
    required this.message,
  });
}

class BottomAppBarStateSuccess extends BottomAppBarState {
  final DashboardModel dashboard;
  final String message;
  BottomAppBarStateSuccess({
    required this.dashboard,
    required this.message,
  });
}
