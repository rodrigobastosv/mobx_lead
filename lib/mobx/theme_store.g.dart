// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ThemeStore on ThemeStoreBase, Store {
  final _$mainColorAtom = Atom(name: 'ThemeStoreBase.mainColor');

  @override
  Color get mainColor {
    _$mainColorAtom.reportRead();
    return super.mainColor;
  }

  @override
  set mainColor(Color value) {
    _$mainColorAtom.reportWrite(value, super.mainColor, () {
      super.mainColor = value;
    });
  }

  final _$ThemeStoreBaseActionController =
      ActionController(name: 'ThemeStoreBase');

  @override
  void setColor(Color color) {
    final _$actionInfo = _$ThemeStoreBaseActionController.startAction(
        name: 'ThemeStoreBase.setColor');
    try {
      return super.setColor(color);
    } finally {
      _$ThemeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
mainColor: ${mainColor}
    ''';
  }
}
