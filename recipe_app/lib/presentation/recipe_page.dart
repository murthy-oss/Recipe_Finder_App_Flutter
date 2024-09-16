import 'package:flutter/material.dart';
import 'package:recipe_app/presentation/widgets/recipe_card.dart';

class RecipePage extends StatefulWidget {
  const RecipePage({super.key});

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  List<Map<String, dynamic>> recipes = [
    {
      'title': 'Thayir Semiya Recipe (Curd Semiya)',
      'thumbnailUrl':
          "https://www.archanaskitchen.com/images/archanaskitchen/1-Author/Raksha_Kamat/Thayir_Curd_Semiya_recipe_Yogurt_Vermicelli_South_indian_Lunch_recipe-4.jpg",
      'rating': "3.5",
      'cookTime': '35 minutes'
    },
    {
      'title': 'Chettinad Style Kara Kuzhambu Recipe with Potato and Brinjal',
      'thumbnailUrl':
          "https://www.archanaskitchen.com/images/archanaskitchen/1-Author/mkavya87-gmail.com/Chettinad_Style_Kara_Kuzhambu_Recipe_with_Potato_and_Brinjal_1_1600.jpg",
      'rating': " 4.5",
      'cookTime': '75 minutes'
    },
    {
      'title': 'Goan Chana Ros Recipe (White Peas Curry)',
      'thumbnailUrl':
          "https://www.archanaskitchen.com/images/archanaskitchen/1-Author/Raksha_Kamat/Goan_Chana_Ross.jpg",
      'rating': "3.5",
      'cookTime': '530 minutes'
    },
    {
      'title': 'Minced Meat And Egg Croquettes Recipe',
      'thumbnailUrl':
          "https://www.archanaskitchen.com/images/archanaskitchen/1-Author/Jyothi_Rajesh/Minced_Meat_and_Egg_Croquettes.jpg",
      'rating': "3.0",
      'cookTime': '55 minutes'
    },
    {
      'title': 'Thekera Tenga Recipe',
      'thumbnailUrl':
          "https://www.archanaskitchen.com/images/archanaskitchen/1-Author/umar/Thekera_Tenga.jpg",
      'rating': "2.5",
      'cookTime': '30 minutes'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return RecipeCard(
              cookTime: recipes[index]['cookTime'],
              rating: recipes[index]['rating'],
              thumbnailUrl: recipes[index]['thumbnailUrl'],
              title: recipes[index]['title']);
        });
  }
}
