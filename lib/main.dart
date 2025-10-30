import 'package:flutter/material.dart';
import 'package:footsal_mobile/menu.dart';
import 'package:footsal_mobile/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Footsal',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(primary: cherry, secondary: beige),
      ),
      debugShowCheckedModeBanner: false, // Menghilangkan banner "DEBUG"
      home: MyHomePage(),
    );
  }
}
