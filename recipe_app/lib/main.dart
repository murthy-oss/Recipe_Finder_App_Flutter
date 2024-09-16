import 'package:flutter/material.dart';
import 'package:recipe_app/presentation/recipe_page.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("GFG Recipe App"),
        ),
        body: const RecipePage(),
      ),
    );
  }
}
