import 'package:ai_chat_app/const.dart';
import 'package:ai_chat_app/myhome_page.dart';
import 'package:ai_chat_app/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

void main() {
  Gemini.init(apiKey: GEMINI_API_KEY);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
         useMaterial3: true, // Define your accent color here
        ),
            home:SplashScreen(),
      );
  
  }
}
