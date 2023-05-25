// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class RecipeModel {
  static List<Recipe> receipe = [];
}

class Recipe {
  final int id;
  final String name;
  final String desc;
  final String ingrediant;
  final String receipe;
  final String image;

  Recipe({
    required this.id,
    required this.name,
    required this.desc,
    required this.ingrediant,
    required this.receipe,
    required this.image,
  });

  Recipe copyWith({
    int? id,
    String? name,
    String? desc,
    String? ingrediant,
    String? receipe,
    String? image,
  }) {
    return Recipe(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      ingrediant: ingrediant ?? this.ingrediant,
      receipe: receipe ?? this.receipe,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'desc': desc,
      'ingrediant': ingrediant,
      'receipe': receipe,
      'image': image,
    };
  }

  factory Recipe.fromMap(Map<String, dynamic> map) {
    return Recipe(
      id: map['id'] as int,
      name: map['name'] as String,
      desc: map['desc'] as String,
      ingrediant: map['ingrediant'] as String,
      receipe: map['receipe'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Recipe.fromJson(String source) =>
      Recipe.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Recipe(id: $id, name: $name, desc: $desc, ingrediant: $ingrediant, receipe: $receipe, image: $image)';
  }

  @override
  bool operator ==(covariant Recipe other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.ingrediant == ingrediant &&
        other.receipe == receipe &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        ingrediant.hashCode ^
        receipe.hashCode ^
        image.hashCode;
  }
}
