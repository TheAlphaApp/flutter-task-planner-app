import 'package:flutter/material.dart';
import 'package:flutter_task_planner_app/screens/create_new_task_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Title and date pickers are available',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: CreateNewTaskPage(),
      ),
    );

    final titleFinder = find.text('Title');
    final dateFinder = find.text('Date');

    expect(titleFinder, findsOneWidget);
    expect(dateFinder, findsOneWidget);
  });
}
