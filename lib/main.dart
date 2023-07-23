import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  final List<String> questions = [
    "Soru 1: Flutter nedir?",
    "Soru 2: Dart hangi şirket tarafından geliştirilmiştir?",
    "Soru 3: Widget nedir?",
    "Soru 4: Flutter'da state yönetimi nasıl yapılır?",
    "Soru 5: Flutter hangi programlama dilini kullanır?"
  ];

  final List<List<String>> options = [
    ["Bir programlama dilidir.", "Bir oyun motorudur.", "Bir web tarayıcısıdır.", "Bir programlama aracıdır."],
    ["Google", "Microsoft", "Facebook", "Apple"],
    ["Arayüz elemanları", "Masaüstü", "Veritabanı", "İşlemci"],
    ["setState() ile", "Provider kullanarak", "SharedPreferences ile", "Firebase ile"],
    ["Dart", "Java", "C++", "Python"]
  ];

  final List<int> correctAnswers = [0, 0, 0, 0, 0];

  int currentQuestionIndex = 0;
  int score = 0;
  bool quizCompleted = false;

  void checkAnswer(int selectedIndex) {
    if (quizCompleted) {
      return;
    }

    if (selectedIndex == correctAnswers[currentQuestionIndex]) {
      setState(() {
        score++;
      });
    }

    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      setState(() {
        quizCompleted = true;
      });
    }
  }

  void restartQuiz() {
    setState(() {
      currentQuestionIndex = 0;
      score = 0;
      quizCompleted = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz Uygulaması"),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                quizCompleted ? "Quiz Tamamlandı!" : questions[currentQuestionIndex],
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              ...options[currentQuestionIndex].map((option) {
                int optionIndex = options[currentQuestionIndex].indexOf(option);
                return ElevatedButton(
                  onPressed: () => checkAnswer(optionIndex),
                  child: Text(option),
                );
              }).toList(),
              if (quizCompleted)
                Column(
                  children: [
                    Text(
                      "Toplam puanınız: $score / ${questions.length}",
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: restartQuiz,
                      child: Text("Tekrar Çöz"),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
