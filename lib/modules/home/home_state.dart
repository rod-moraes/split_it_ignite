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
  final Object result;
  final String message;
  HomeStateSuccess({
    required this.result,
    required this.message,
  });
}
