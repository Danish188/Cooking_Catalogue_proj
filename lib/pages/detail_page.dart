import 'package:flutter/material.dart';
import 'package:cook_catalogue/models/recipes.dart';

class Detail_page extends StatelessWidget {
  const Detail_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cook Guides"),
      ),
      body: Center(
        child: Text(
          "Recipes goes here!",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
