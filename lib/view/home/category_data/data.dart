class Categorydata {
  static List<CategoryModel> list = [
    CategoryModel(image: "assets/image_home/pizza.png", name: "Pizza"),
    CategoryModel(image: "assets/image_home/burger.png", name: "Burger"),
    CategoryModel(image: "assets/image_home/health.png", name: "Health"),
    CategoryModel(image: "assets/image_home/noodles.png", name: "Noodles"),
  ];
}

class CategoryModel {
  String image;
  String name;
  CategoryModel({required this.image, required this.name});
}
