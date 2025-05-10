import 'package:devops_app/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('App title is displayed', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('DevOps Flutter'), findsOneWidget);
  });
}
