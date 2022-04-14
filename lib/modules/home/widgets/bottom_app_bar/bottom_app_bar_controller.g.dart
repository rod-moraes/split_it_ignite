// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom_app_bar_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BottomAppBarController on _BottomAppBarControllerBase, Store {
  final _$bottomAppBarStateAtom =
      Atom(name: '_BottomAppBarControllerBase.bottomAppBarState');

  @override
  BottomAppBarState get bottomAppBarState {
    _$bottomAppBarStateAtom.reportRead();
    return super.bottomAppBarState;
  }

  @override
  set bottomAppBarState(BottomAppBarState value) {
    _$bottomAppBarStateAtom.reportWrite(value, super.bottomAppBarState, () {
      super.bottomAppBarState = value;
    });
  }

  final _$dashboardAtom = Atom(name: '_BottomAppBarControllerBase.dashboard');

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

  final _$_modifyBottomAppBarStateAsyncAction =
      AsyncAction('_BottomAppBarControllerBase._modifyBottomAppBarState');

  @override
  Future<void> _modifyBottomAppBarState(BottomAppBarState state) {
    return _$_modifyBottomAppBarStateAsyncAction
        .run(() => super._modifyBottomAppBarState(state));
  }

  final _$getDashboardsAsyncAction =
      AsyncAction('_BottomAppBarControllerBase.getDashboards');

  @override
  Future<void> getDashboards() {
    return _$getDashboardsAsyncAction.run(() => super.getDashboards());
  }

  @override
  String toString() {
    return '''
bottomAppBarState: ${bottomAppBarState},
dashboard: ${dashboard}
    ''';
  }
}
