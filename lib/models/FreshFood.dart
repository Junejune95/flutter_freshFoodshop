class FreshFood {
  final String imageUrl;
  final String name;
  final String category;
  final int price;
  final String size;
  final String description;

  FreshFood({
    this.imageUrl,
    this.name,
    this.category,
    this.price,
    this.size,
    this.description,
  });
}


final List<FreshFood> freshFood = [
  FreshFood(
    imageUrl: 'assets/orange.png',
    name: 'Orange',
    category: 'Fruits',
    price: 25,
    size: 'Small',
    description:
        'Aloe vera is a succulent FreshFood species of the genus Aloe. It\'s medicinal uses and air purifying ability make it an awesome FreshFood.',
  ),
  FreshFood(
    imageUrl: 'assets/carrot.png',
    name: 'Carrot',
    category: 'Vegetable',
    price: 30,
    size: 'Medium',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta risus id urna luctus efficitur.',
  ),
  FreshFood(
    imageUrl: 'assets/apple.png',
    name: 'Apple',
    category: 'Fruit',
    price: 42,
    size: 'Large',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta risus id urna luctus efficitur. Suspendisse vulputate faucibus est, a vehicula sem eleifend quis.',
  ),
];