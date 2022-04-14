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
  final Object result;
  final String message;
  BottomAppBarStateSuccess({
    required this.result,
    required this.message,
  });
}
