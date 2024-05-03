class CoffeeModel {
  final String image;
  final String name;
  final String price;
  final bool isSelected;

  CoffeeModel(
    this.image,
    this.name,
    this.price,
    this.isSelected,
  );
}

List<CoffeeModel> coffee = [
  CoffeeModel("assets/images/chailatte.png", "Chai Latte", "85.00 €", true),
  CoffeeModel(
      "assets/images/matcha_latte.png", "Matcha Latte", "22.00 €", false),
  CoffeeModel("assets/images/redeye.png", "Red Eye Coffee", "60.00 €", false)
];

List<CoffeeModel> coffee2 = [
  CoffeeModel(
      "assets/images/matcha_latte.png", "Matcha Latte", "22.00 €", false),
  CoffeeModel("assets/images/chailatte.png", "Chai Latte", "85.00 €", false),
  CoffeeModel("assets/images/redeye.png", "Red Eye Coffee", "60.00 €", false)
];
