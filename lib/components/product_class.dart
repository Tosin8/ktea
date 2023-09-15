class Product {
  final int price;
  final String id, title, category, image, subTitle, description;

  Product({
    required this.id,
    required this.price,
    required this.title,
    required this.category,
    required this.image,
    required this.subTitle,
    required this.description,
  });

  // to create a category from JSON
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json["id"],
      title: json["title"],
      image: json["image"],
      price: json["price"],
      category: json["category"],
      subTitle: json["subTitle"],
      description: json["description"],
    );
  }
}

// home decoration products
Product product = Product(
  id: "1",
  price: 1600,
  title: "Marble Deco",
  image: "assets/products/home_decoration/1.jpg",
  category: "Home Decoration",
  subTitle: "Tieton Armchair",
  description:
      "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work.",
);
