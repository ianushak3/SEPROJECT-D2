import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Sign In test for customer', () {
    testWidgets('tap on the ', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Verify the # of default buttons for Customer SignIn.
      expect(find.byType(DefaultButton), findsNWidgets(2));
      //expect(find.byType(SizedBox), findsNWidgets(9));

      final Finder db = find.text('Customer SignIn');

      // Emulate a tap on the default button for Customer SignIn.
      await tester.tap(db);

      // Trigger a frame.
      await tester.pumpAndSettle();

      // Verify that the Customer Sign In now takes to original page of Sign In.
      expect(find.text('Continue'), findsOneWidget);
    });

  testWidgets('Sign In test for Merchant ', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Verify the # of default buttons for Merchant SignIn.
      expect(find.byType(DefaultButton), findsNWidgets(2));

      final Finder db1 = find.text('Merchant SignIn');

      // Emulate a tap on the default button for Merchant SignIn.
      await tester.tap(db1);

      // Trigger a frame.
      await tester.pumpAndSettle();

      // Verify that the Merchant Sign In now takes to original page of Sign In.
      expect(find.text('Continue'), findsOneWidget);
    });
  });
}
