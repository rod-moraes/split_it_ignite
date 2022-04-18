// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_split_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CreateSplitController on _CreateSplitControllerBase, Store {
  Computed<int>? _$indexNavigationComputed;

  @override
  int get indexNavigation =>
      (_$indexNavigationComputed ??= Computed<int>(() => super.indexNavigation,
              name: '_CreateSplitControllerBase.indexNavigation'))
          .value;
  Computed<bool>? _$enableNavigateButtonComputed;

  @override
  bool get enableNavigateButton => (_$enableNavigateButtonComputed ??=
          Computed<bool>(() => super.enableNavigateButton,
              name: '_CreateSplitControllerBase.enableNavigateButton'))
      .value;

  final _$eventNameAtom = Atom(name: '_CreateSplitControllerBase.eventName');

  @override
  String get eventName {
    _$eventNameAtom.reportRead();
    return super.eventName;
  }

  @override
  set eventName(String value) {
    _$eventNameAtom.reportWrite(value, super.eventName, () {
      super.eventName = value;
    });
  }

  final _$indexAtom = Atom(name: '_CreateSplitControllerBase.index');

  @override
  int get index {
    _$indexAtom.reportRead();
    return super.index;
  }

  @override
  set index(int value) {
    _$indexAtom.reportWrite(value, super.index, () {
      super.index = value;
    });
  }

  final _$_CreateSplitControllerBaseActionController =
      ActionController(name: '_CreateSplitControllerBase');

  @override
  void setEventName(String newName) {
    final _$actionInfo = _$_CreateSplitControllerBaseActionController
        .startAction(name: '_CreateSplitControllerBase.setEventName');
    try {
      return super.setEventName(newName);
    } finally {
      _$_CreateSplitControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void nextStep() {
    final _$actionInfo = _$_CreateSplitControllerBaseActionController
        .startAction(name: '_CreateSplitControllerBase.nextStep');
    try {
      return super.nextStep();
    } finally {
      _$_CreateSplitControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void backStep(BuildContext context) {
    final _$actionInfo = _$_CreateSplitControllerBaseActionController
        .startAction(name: '_CreateSplitControllerBase.backStep');
    try {
      return super.backStep(context);
    } finally {
      _$_CreateSplitControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
eventName: ${eventName},
index: ${index},
indexNavigation: ${indexNavigation},
enableNavigateButton: ${enableNavigateButton}
    ''';
  }
}
