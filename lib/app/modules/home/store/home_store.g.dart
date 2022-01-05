// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStoreBase, Store {
  final _$showBackToTopAtom = Atom(name: '_HomeStoreBase.showBackToTop');

  @override
  bool get showBackToTop {
    _$showBackToTopAtom.reportRead();
    return super.showBackToTop;
  }

  @override
  set showBackToTop(bool value) {
    _$showBackToTopAtom.reportWrite(value, super.showBackToTop, () {
      super.showBackToTop = value;
    });
  }

  final _$scrollControllerAtom = Atom(name: '_HomeStoreBase.scrollController');

  @override
  ScrollController get scrollController {
    _$scrollControllerAtom.reportRead();
    return super.scrollController;
  }

  @override
  set scrollController(ScrollController value) {
    _$scrollControllerAtom.reportWrite(value, super.scrollController, () {
      super.scrollController = value;
    });
  }

  final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase');

  @override
  void setShowBackToTop(ScrollController scrollController) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.setShowBackToTop');
    try {
      return super.setShowBackToTop(scrollController);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void scrollToTop() {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.scrollToTop');
    try {
      return super.scrollToTop();
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
showBackToTop: ${showBackToTop},
scrollController: ${scrollController}
    ''';
  }
}
