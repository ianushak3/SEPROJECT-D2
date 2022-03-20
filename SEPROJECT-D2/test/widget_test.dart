import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shop_app/main.dart';

void main() {
  testWidgets('Widgets test in "main.dart"', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    var a = find.byType(MaterialApp);
    expect(a, findsOneWidget);
  });

  testWidgets('# of sized boxes and spacers in App',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    var box = find.byType(SizedBox);
    var spaces = find.byType(Spacer);
    expect(box, findsNWidgets(9));
    expect(spaces, findsNWidgets(6));
  });

  testWidgets('# of Images and Text fields used in App',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    var Images = find.byType(Image);
    var Texts = find.byType(Text);
    expect(Images, findsOneWidget);
    expect(Texts, findsNWidgets(4));
  });

}
