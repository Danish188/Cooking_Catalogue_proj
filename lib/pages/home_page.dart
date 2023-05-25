import 'dart:convert';

import 'package:cook_catalogue/models/recipes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utils/routes.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/item.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final recJson = await rootBundle.loadString("assets/files/recipes.json");
    final decoded = jsonDecode(recJson);
    var recipeDate = decoded['recipes'];
    RecipeModel.receipe = List.from(recipeDate)
        .map<Recipe>((recipe) => Recipe.fromMap(recipe))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cook Guides"),
      ),
      body: (RecipeModel != null && RecipeModel.receipe.isNotEmpty)
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 18,
                ),
                itemBuilder: (context, index) {
                  final item = RecipeModel.receipe[index];
                  return GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, MyRoutes.detail_route),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: GridTile(
                        footer: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(color: Colors.cyan),
                          child: Text(
                            item.name,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        child: Image.network(
                          item.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: RecipeModel.receipe.length,
              ),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
      drawer: const CustomDrawer(),
    );
  }
}
