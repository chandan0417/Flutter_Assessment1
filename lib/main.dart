import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/user_data.dart';
import 'screens/input_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => UserData(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Multi-Screen App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Center(child: InputScreen()),
    );
  }
}






