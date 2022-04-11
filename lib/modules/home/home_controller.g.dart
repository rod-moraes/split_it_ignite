// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$homeStateAtom = Atom(name: '_HomeControllerBase.homeState');

  @override
  HomeState get homeState {
    _$homeStateAtom.reportRead();
    return super.homeState;
  }

  @override
  set homeState(HomeState value) {
    _$homeStateAtom.reportWrite(value, super.homeState, () {
      super.homeState = value;
    });
  }

  final _$eventsAtom = Atom(name: '_HomeControllerBase.events');

  @override
  ObservableList<EventModel> get events {
    _$eventsAtom.reportRead();
    return super.events;
  }

  @override
  set events(ObservableList<EventModel> value) {
    _$eventsAtom.reportWrite(value, super.events, () {
      super.events = value;
    });
  }

  final _$dashboardAtom = Atom(name: '_HomeControllerBase.dashboard');

  @override
  DashboardModel? get dashboard {
    _$dashboardAtom.reportRead();
    return super.dashboard;
  }

  @override
  set dashboard(DashboardModel? value) {
    _$dashboardAtom.reportWrite(value, super.dashboard, () {
      super.dashboard = value;
    });
  }

  final _$_modifyHomeStateAsyncAction =
      AsyncAction('_HomeControllerBase._modifyHomeState');

  @override
  Future<void> _modifyHomeState(HomeState state) {
    return _$_modifyHomeStateAsyncAction
        .run(() => super._modifyHomeState(state));
  }

  final _$getDashboardsAsyncAction =
      AsyncAction('_HomeControllerBase.getDashboards');

  @override
  Future<void> getDashboards() {
    return _$getDashboardsAsyncAction.run(() => super.getDashboards());
  }

  final _$getEventsAsyncAction = AsyncAction('_HomeControllerBase.getEvents');

  @override
  Future<void> getEvents() {
    return _$getEventsAsyncAction.run(() => super.getEvents());
  }

  @override
  String toString() {
    return '''
homeState: ${homeState},
events: ${events},
dashboard: ${dashboard}
    ''';
  }
}
