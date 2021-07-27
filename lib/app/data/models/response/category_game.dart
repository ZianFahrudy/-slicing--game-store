class CategoryGame {
  final String? title;
  final String? assetPath;

  CategoryGame({this.title, this.assetPath});
}

/// dummy category game
List<CategoryGame> listCategoryGame = [
  CategoryGame(title: "Arcade", assetPath: "assets/category-game/arcade.png"),
  CategoryGame(title: "Racing", assetPath: "assets/category-game/racing.png"),
  CategoryGame(
      title: "Strategy", assetPath: "assets/category-game/strategy.png"),
  CategoryGame(title: "More", assetPath: "assets/category-game/more.png"),
];
