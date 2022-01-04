import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:portfolio_b_w/app/modules/home/pages/home_page.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group('HomePage', () {
    testWidgets('has a title and message', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestableWidget(HomePage(title: 'T')));
      final titleFinder = find.text('T');
      expect(titleFinder, findsOneWidget);
    });
  });
}
