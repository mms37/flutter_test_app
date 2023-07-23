// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:quizz/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
// Uygulamanın ana dosyasının yolunu düzeltin
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
 // Uygulamanızın main.dart dosyasının yolunu buraya ekleyin

void main() {
  testWidgets('QuizApp test', (WidgetTester tester) async {
    // Uygulamayı başlatın
    await tester.pumpWidget(QuizApp());

    // Başlangıçta ilk sorunun doğru şekilde yüklendiğini doğrulayın
    expect(find.text('Soru 1: Flutter nedir?'), findsOneWidget);
    expect(find.text('Bir programlama dilidir.'), findsOneWidget);
    expect(find.text('Bir oyun motorudur.'), findsOneWidget);
    expect(find.text('Bir web tarayıcısıdır.'), findsOneWidget);
    expect(find.text('Bir programlama aracıdır.'), findsOneWidget);

    // İlk soruyu doğru cevaplayın
    await tester.tap(find.text('Bir programlama dilidir.'));
    await tester.pump();

    // İkinci sorunun yüklendiğini doğrulayın
    expect(find.text('Soru 2: Dart hangi şirket tarafından geliştirilmiştir?'), findsOneWidget);
    expect(find.text('Google'), findsOneWidget);
    expect(find.text('Microsoft'), findsOneWidget);
    expect(find.text('Facebook'), findsOneWidget);
    expect(find.text('Apple'), findsOneWidget);

    // İkinci soruyu yanlış cevaplayın
    await tester.tap(find.text('Microsoft'));
    await tester.pump();

    // Üçüncü sorunun yüklendiğini doğrulayın
    expect(find.text('Soru 3: Widget nedir?'), findsOneWidget);
    expect(find.text('Arayüz elemanları'), findsOneWidget);
    expect(find.text('Masaüstü'), findsOneWidget);
    expect(find.text('Veritabanı'), findsOneWidget);
    expect(find.text('İşlemci'), findsOneWidget);

    // Üçüncü soruyu doğru cevaplayın
    await tester.tap(find.text('Arayüz elemanları'));
    await tester.pump();

    // Dördüncü sorunun yüklendiğini doğrulayın
    expect(find.text('Soru 4: Flutter\'da state yönetimi nasıl yapılır?'), findsOneWidget);
    expect(find.text('setState() ile'), findsOneWidget);
    expect(find.text('Provider kullanarak'), findsOneWidget);
    expect(find.text('SharedPreferences ile'), findsOneWidget);
    expect(find.text('Firebase ile'), findsOneWidget);

    // Dördüncü soruyu doğru cevaplayın
    await tester.tap(find.text('setState() ile'));
    await tester.pump();

    // Beşinci sorunun yüklendiğini doğrulayın
    expect(find.text('Soru 5: Flutter hangi programlama dilini kullanır?'), findsOneWidget);
    expect(find.text('Dart'), findsOneWidget);
    expect(find.text('Java'), findsOneWidget);
    expect(find.text('C++'), findsOneWidget);
    expect(find.text('Python'), findsOneWidget);

    // Beşinci soruyu doğru cevaplayın
    await tester.tap(find.text('Dart'));
    await tester.pump();

    // Sonuçlar iletişim kutusunun görüntülendiğini doğrulayın
    expect(find.text('Quiz Tamamlandı!'), findsOneWidget);
    expect(find.text('Toplam puanınız: 5 / 5'), findsOneWidget);

    // Tekrar teste gir düğmesine basın
    await tester.tap(find.text('Tekrar Çöz'));
    await tester.pump();

    // Başlangıçta ilk sorunun tekrar yüklendiğini doğrulayın
    expect(find.text('Soru 1: Flutter nedir?'), findsOneWidget);
    expect(find.text('Bir programlama dilidir.'), findsOneWidget);
    expect(find.text('Bir oyun motorudur.'), findsOneWidget);
    expect(find.text('Bir web tarayıcısıdır.'), findsOneWidget);
    expect(find.text('Bir programlama aracıdır.'), findsOneWidget);
  });
}
