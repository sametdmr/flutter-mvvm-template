// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ExampleViewModel on _ExampleViewModelBase, Store {
  final _$numberAtom = Atom(name: '_ExampleViewModelBase.number');

  @override
  int get number {
    _$numberAtom.reportRead();
    return super.number;
  }

  @override
  set number(int value) {
    _$numberAtom.reportWrite(value, super.number, () {
      super.number = value;
    });
  }

  final _$_ExampleViewModelBaseActionController =
      ActionController(name: '_ExampleViewModelBase');

  @override
  void incrementNumber() {
    final _$actionInfo = _$_ExampleViewModelBaseActionController.startAction(
        name: '_ExampleViewModelBase.incrementNumber');
    try {
      return super.incrementNumber();
    } finally {
      _$_ExampleViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
number: ${number}
    ''';
  }
}
