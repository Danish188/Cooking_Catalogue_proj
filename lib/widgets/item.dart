import 'package:flutter/material.dart';
import '../models/recipes.dart';

class Recipes extends StatelessWidget {
  final Recipe recipe;
  const Recipes({Key? key, required this.recipe})
      : assert(recipe != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: const EdgeInsets.all(5),
        onTap: () {},
        leading: Image.asset(recipe.image),
        title: Text(recipe.name),
        subtitle: Text(recipe.desc),
      ),
    );
  }
}
