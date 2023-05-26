import 'package:flutter/material.dart';
import 'package:prueba_norman/navigation/my_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Prueba Norman',
      debugShowCheckedModeBanner: false,
      home: MyNavigationBar(),
    );
  }
}
