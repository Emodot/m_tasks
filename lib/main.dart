import 'package:flutter/material.dart';
import 'package:m_tasks/screens/home.dart';
import 'package:m_tasks/widgets/unfocus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Unfocus(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'mTasks',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Home(),
      ),
    );
  }
}
