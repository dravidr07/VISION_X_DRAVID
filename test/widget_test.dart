import 'package:flutter_test/flutter_test.dart';

import 'package:namma_health/main.dart';

void main() {
  testWidgets('LocalConnect welcome screen', (tester) async {
    await tester.pumpWidget(const WorkLinkApp());

    expect(find.text('WorkLink'), findsOneWidget);
    expect(find.text("I'm a Customer"), findsOneWidget);
    expect(find.text("I'm a Worker"), findsOneWidget);
  });
}
