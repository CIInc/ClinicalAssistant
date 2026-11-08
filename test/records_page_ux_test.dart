import 'package:clinical_assistant/models/health_record.dart';
import 'package:clinical_assistant/ui/records/records_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('DatePresetChip displays tooltips and semantics labels', (
    WidgetTester tester,
  ) async {
    tester.view.physicalSize = const Size(800, 2000);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    final sampleRecord = HealthRecord(
      id: 'vital-1',
      name: 'Heart Rate',
      category: RecordCategory.vital,
      value: '72',
      unit: 'bpm',
      recordedAt: DateTime.now(),
      source: 'Test Source',
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: RecordsPage(records: [sampleRecord])),
      ),
    );

    await tester.pumpAndSettle();

    // Verify DatePresetChip tooltips and semantics for preset keys
    final presetKeys = {
      'record-preset-all': (
        tooltip: 'Filter records from all time',
        semantics: 'All time date range filter',
      ),
      'record-preset-7d': (
        tooltip: 'Filter records from last 7 days',
        semantics: 'Last 7 days date range filter',
      ),
      'record-preset-30d': (
        tooltip: 'Filter records from last 30 days',
        semantics: 'Last 30 days date range filter',
      ),
      'record-preset-90d': (
        tooltip: 'Filter records from last 90 days',
        semantics: 'Last 90 days date range filter',
      ),
      'record-preset-1y': (
        tooltip: 'Filter records from last 1 year',
        semantics: 'Last 1 year date range filter',
      ),
    };

    for (final entry in presetKeys.entries) {
      final chipFinder = find.byKey(ValueKey(entry.key));
      expect(chipFinder, findsOneWidget);

      final tooltip = tester.widget<Tooltip>(
        find.descendant(of: chipFinder, matching: find.byType(Tooltip)).first,
      );
      expect(tooltip.message, equals(entry.value.tooltip));

      final semanticsList = tester
          .widgetList<Semantics>(
            find.descendant(of: chipFinder, matching: find.byType(Semantics)),
          )
          .where((s) => s.properties.label == entry.value.semantics);
      expect(semanticsList, hasLength(1));
      expect(semanticsList.first.properties.button, isTrue);
    }
  });

  testWidgets(
    'RecordsPage specialty and category filter chips display accessible tooltips',
    (WidgetTester tester) async {
      tester.view.physicalSize = const Size(1200, 2000);
      tester.view.devicePixelRatio = 1.0;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);

      final vitalRecord = HealthRecord(
        id: 'vital-1',
        name: 'Heart Rate',
        category: RecordCategory.vital,
        value: '72',
        unit: 'bpm',
        recordedAt: DateTime.now(),
        source: 'Apple Health',
      );
      final labRecord = HealthRecord(
        id: 'lab-1',
        name: 'Potassium',
        category: RecordCategory.lab,
        value: '6.2',
        unit: 'mmol/L',
        referenceRange: '3.5 – 5.0 mmol/L',
        recordedAt: DateTime.now(),
        source: 'Hospital Portal',
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(body: RecordsPage(records: [vitalRecord, labRecord])),
        ),
      );

      await tester.pumpAndSettle();

      // Check Specialty ChoiceChips tooltips
      final allSpecialtiesChip = tester.widget<ChoiceChip>(
        find.byKey(const ValueKey('records-specialty-all')),
      );
      expect(
        allSpecialtiesChip.tooltip,
        equals('Filter records across all specialties'),
      );

      final cardioChipFinder = find.byKey(
        const ValueKey('records-specialty-cardiology'),
      );
      final cardioChip = tester.widget<ChoiceChip>(cardioChipFinder);
      expect(
        cardioChip.tooltip,
        equals('Filter records by Cardiology Consultation'),
      );

      // Select Cardiology filter and verify tooltip updates to clear filter
      await tester.ensureVisible(cardioChipFinder);
      await tester.tap(cardioChipFinder);
      await tester.pumpAndSettle();

      final activeCardioChip = tester.widget<ChoiceChip>(cardioChipFinder);
      expect(
        activeCardioChip.tooltip,
        equals('Clear Cardiology specialty filter'),
      );

      // Check "All" FilterChip tooltip
      final allCategoriesFinder = find.widgetWithText(FilterChip, 'All');
      final allCategoriesChip = tester.widget<FilterChip>(allCategoriesFinder);
      expect(
        allCategoriesChip.tooltip,
        equals('Show records from all categories and sources'),
      );

      // Check Category FilterChip tooltip (unselected vs selected)
      final vitalsFinder = find.widgetWithText(FilterChip, 'Vitals');
      expect(
        tester.widget<FilterChip>(vitalsFinder).tooltip,
        equals('Filter records by Vitals'),
      );

      await tester.tap(vitalsFinder);
      await tester.pumpAndSettle();

      expect(
        tester.widget<FilterChip>(vitalsFinder).tooltip,
        equals('Clear Vitals filter'),
      );

      // Check "Out of range only" filter chip tooltip
      final outOfRangeFinder = find.byKey(
        const ValueKey('records-out-of-range-filter'),
      );
      expect(
        tester.widget<FilterChip>(outOfRangeFinder).tooltip,
        equals('Filter to show only out-of-range lab results'),
      );

      await tester.scrollUntilVisible(
        outOfRangeFinder,
        100,
        scrollable: find.byType(Scrollable).at(1),
      );
      await tester.tap(outOfRangeFinder);
      await tester.pumpAndSettle();

      expect(
        tester.widget<FilterChip>(outOfRangeFinder).tooltip,
        equals('Show all results including normal values'),
      );

      // Check Source FilterChip tooltip
      final sourceFinder = find.widgetWithText(
        FilterChip,
        'Source: Apple Health',
      );
      expect(
        tester.widget<FilterChip>(sourceFinder).tooltip,
        equals('Filter records from Apple Health'),
      );

      await tester.scrollUntilVisible(
        sourceFinder,
        100,
        scrollable: find.byType(Scrollable).at(1),
      );
      await tester.tap(sourceFinder);
      await tester.pumpAndSettle();

      expect(
        tester.widget<FilterChip>(sourceFinder).tooltip,
        equals('Clear Apple Health source filter'),
      );
    },
  );
}
