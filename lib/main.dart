import 'package:flutter/material.dart';
import 'package:penpal/src/Login/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pen Pal',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          surface: Colors.white,
          surfaceTint: Colors.white,
          seedColor: Colors.transparent,
          shadow: Colors.black,
          ),
        useMaterial3: true,
      ),
      home: const LoginPage()
    );
  }
}