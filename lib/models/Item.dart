class Item {
  String title;
  String image;
  String country;
  double price;

  int counter = 0;

  Item({
    required this.title,
    required this.image,
    required this.price,
    required this.country
  });
}

List<Item> marketItems = [
  Item(
    title: 'Apple',
    image:
        'https://img.freepik.com/free-photo/red-apple-with-green-leaf-white-background_1232-3290.jpg',
    price: 15,
    country: 'Italy'
  ),
  Item(
    title: 'Orange',
    image:
        'https://img.freepik.com/free-photo/orange-white-white_144627-16571.jpg',
    price: 10,
    country: 'Egypt'
  ),
  Item(
    title: 'Mango',
    image:
        'https://img.freepik.com/free-photo/freshness-food-life-fruit-yellow_1203-5467.jpg',
    price: 25,
    country: 'Egypt'
  ),
];
