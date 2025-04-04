import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:todo_app/providers/task_provider.dart';
import 'package:todo_app/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  // debugRepaintRainbowEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => TaskProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );
  }
}
