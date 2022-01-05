import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  @observable
  bool showBackToTop = false;

  @observable
  ScrollController scrollController = ScrollController();

  @action
  void setShowBackToTop(ScrollController scrollController) {
    scrollController.addListener(() {
      if (scrollController.offset > 90) {
        showBackToTop = true;
      } else {
        showBackToTop = false;
      }
    });
  }

  @action
  void scrollToTop() {
    scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
  }
}
