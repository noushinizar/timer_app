import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer_app/TimerService.dart';
import 'package:timer_app/pomodoroScreen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context)=>TimerSurvice(),
      child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: pomodoroScreen(),
    );
  }
}
