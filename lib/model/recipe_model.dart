class RecipeModel {
  String title, writer, description;
  int cookingTime;
  int servings;
  List<String> ingredients = [];
  String imgPath;
  RecipeModel({
     this.title,
   this.writer,
   this.description,
    this.cookingTime,
     this.servings,
     this.imgPath,
     this.ingredients,
  });
  static List<RecipeModel> demoRecipe = [
    RecipeModel(
      title: 'Gruyère, Bacon, and Spinach Scrambled Eggs',
      writer: "Imran Sefat",
      description:
          'A touch of Dijon mustard, salty bacon, melty cheese, and a handful of greens seriously upgrades scrambled eggs, without too much effort!',
      cookingTime: 10,
      servings: 4,
      ingredients: [
        '8 large eggs',
        '1 tsp. Dijon mustard',
        'Kosher salt and pepper',
        '1 tbsp. olive oil or unsalted butter',
        '2 slices thick-cut bacon, cooked and broken into pieces',
        '2 c. spinach, torn',
        '2 oz. Gruyère cheese, shredded',
      ],
    ),
  ];
}
