import 'package:flutter/material.dart';
import 'package:asgment/home_screen.dart';
import 'package:asgment/sending_screen.dart';
import 'package:asgment/receipt_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FE Assignment',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFF9EFE5)),
      ),
      routes: {
        '/home': (context) => HomeScreen(),
        '/sending': (context) => SendingScreen(),
        '/receipt': (context) => ReceiptScreen(),
      },
      initialRoute: '/home',
    );
  }
}
