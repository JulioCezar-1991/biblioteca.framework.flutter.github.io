import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:app_flutter_biblioteca/app/modules/charts/charts_page.dart';

main() {
  testWidgets('ChartsPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ChartsPage(title: 'Charts')));
    final titleFinder = find.text('Charts');
    expect(titleFinder, findsOneWidget);
  });
}
