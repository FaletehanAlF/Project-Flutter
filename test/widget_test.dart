import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:belajar_flutter2/pages/keranjangPage.dart';
import 'package:belajar_flutter2/pages/notifikasiPage.dart';
import 'package:belajar_flutter2/pages/pesananPage.dart';
import 'package:belajar_flutter2/pages/profilePage.dart';
import 'package:belajar_flutter2/pages/searchPage.dart';

void main() {
  testWidgets('Simple placeholder pages render their labels', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Keranjangpage()));
    expect(find.text('Keranjang'), findsOneWidget);

    await tester.pumpWidget(const MaterialApp(home: Notifikasipage()));
    expect(find.text('Notifikasi'), findsOneWidget);

    await tester.pumpWidget(const MaterialApp(home: Pesananpage()));
    expect(find.text('Pesanan'), findsOneWidget);

    await tester.pumpWidget(const MaterialApp(home: Profilepage()));
    expect(find.text('Profile'), findsOneWidget);

    await tester.pumpWidget(const MaterialApp(home: Searchpage()));
    expect(find.text('Search'), findsOneWidget);
  });
}
