import 'package:flutter/material.dart';

import 'screens/main/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //
      //   primarySwatch: Colors.blue,
      // ),
      home: HomeScreen(),
    );
  }
}
