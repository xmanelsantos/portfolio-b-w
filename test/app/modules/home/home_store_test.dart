import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio_b_w/app/modules/home/store/home_store.dart';

void main() {
  late HomeStore store;

  setUpAll(() {
    store = HomeStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}
