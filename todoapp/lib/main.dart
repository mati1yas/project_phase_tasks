import 'package:flutter/material.dart';
import 'package:todoapp/features/presentation/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do app',
      debugShowCheckedModeBanner: false,
      color: const Color.fromARGB(255, 255, 164, 7),
      theme: ThemeData(primarySwatch: Colors.amber),
      home: TodoHomePage(),
    );
  }
}
