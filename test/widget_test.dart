import 'package:flutter_test/flutter_test.dart';
import 'package:hibaportfolio/main.dart';

void main() {
  testWidgets('UI UX Designer portfolio loads correctly', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const DesignerPortfolioApp());

    await tester.pumpAndSettle();

    // Verify designer branding.
    expect(find.text('HIBA.'), findsWidgets);

    // Verify main hero content.
    expect(
      find.text('Designing digital\nexperiences that feel right.'),
      findsOneWidget,
    );

    expect(find.text('UI/UX Designer'), findsWidgets);

    expect(find.text('Figma Designer'), findsWidgets);

    // Verify hero buttons.
    expect(find.text('View My Work'), findsOneWidget);

    expect(find.text('Contact Me'), findsOneWidget);

    // Verify portfolio sections.
    expect(find.text('SELECTED WORK'), findsOneWidget);

    expect(find.text('WHAT I DO'), findsOneWidget);

    expect(find.text('SKILLS & TOOLS'), findsOneWidget);

    expect(find.text('EXPERIENCE'), findsOneWidget);

    // Verify project names.
    expect(find.text('Smartwatch Companion'), findsOneWidget);

    expect(find.text('Doctor Clinic App'), findsOneWidget);

    expect(find.text('Dashboard & Web UI'), findsOneWidget);
  });
}
