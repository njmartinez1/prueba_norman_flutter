import 'package:flutter/material.dart';
import 'package:prueba_norman/widgets/home/go_to_products.dart';
import 'package:prueba_norman/widgets/home/my_options.dart';
import 'package:prueba_norman/widgets/home/promos.dart';
import 'package:prueba_norman/widgets/system_design/my_app_bar.dart';
import 'package:prueba_norman/widgets/home/summary_container.dart';
import 'package:prueba_norman/widgets/system_design/my_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: ListView(
          children: const [
            SizedBox(height: 12.0),
            SummaryContainer(),
            MyTitle(title: 'Mueve tu plata'),
            MyOptions(),
            SizedBox(height: 28.0),
            GoToProducts(),
            MyTitle(title: 'Tenemos para ti'),
            Promos(),
            SizedBox(height: 12.0),
          ],
        ),
      ),
    );
  }
}
