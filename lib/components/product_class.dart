class Products {
  final String image, title, description;
  final int price, id;

  Products({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.id,
  });
}

List<Products> products = [
  Products(
    id: 1,
    title: "Office Code",
    price: 234,
    description: dummyText,
    image: "assets/products/home_decoration/1_150.jpg",
  ),
  Products(
    id: 2,
    title: "Belt Bag",
    price: 234,
    description: dummyText,
    image: "assets/products/home_decoration/2_160.jpg",
  ),
  Products(
    id: 3,
    title: "Hang Top",
    price: 234,
    description: dummyText,
    image: "assets/products/home_decoration/3_150.jpg",
  ),
  Products(
    id: 4,
    title: "Old Fashion",
    price: 234,
    description: dummyText,
    image: "assets/products/home_decoration/4_150.jpg",
  ),
  Products(
    id: 5,
    title: "Office Code",
    price: 234,
    description: dummyText,
    image: "assets/products/sofa/1_150.jpg",
  ),
  Products(
    id: 6,
    title: "Office Code",
    price: 234,
    description: dummyText,
    image: "assets/products/sofa/2_150.jpg",
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
