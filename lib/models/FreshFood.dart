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
    imageUrl: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/25d45014-8cc3-4c98-b02c-5a0cf3a55ddd/ddkujx9-a071d9dc-86b0-49e1-900f-80fe52ee1df3.png/v1/fill/w_900,h_834,strp/slices_of_orange_on_a_transparent_background__by_prussiaart_ddkujx9-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvMjVkNDUwMTQtOGNjMy00Yzk4LWIwMmMtNWEwY2YzYTU1ZGRkXC9kZGt1ang5LWEwNzFkOWRjLTg2YjAtNDllMS05MDBmLTgwZmU1MmVlMWRmMy5wbmciLCJoZWlnaHQiOiI8PTgzNCIsIndpZHRoIjoiPD05MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvMjVkNDUwMTQtOGNjMy00Yzk4LWIwMmMtNWEwY2YzYTU1ZGRkXC9wcnVzc2lhYXJ0LTQucG5nIiwib3BhY2l0eSI6OTUsInByb3BvcnRpb25zIjowLjQ1LCJncmF2aXR5IjoiY2VudGVyIn19.xHsPoJrW_xpXqlvE09PsfmoMNUTBCKH7SCgLyfyHVU8',
    name: 'Orange',
    category: 'Fruits',
    price: 25,
    size: 'Small',
    description:
        'Aloe vera is a succulent FreshFood species of the genus Aloe. It\'s medicinal uses and air purifying ability make it an awesome FreshFood.',
  ),
  FreshFood(
    imageUrl: 'https://starpng.com/public/uploads/preview/carrot-transparent-background-png-image-1015771040508hl1yjj09x.png',
    name: 'Carrot',
    category: 'Vegetable',
    price: 30,
    size: 'Medium',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta risus id urna luctus efficitur.',
  ),
  FreshFood(
    imageUrl: 'https://lh3.googleusercontent.com/proxy/iWkactkplbmARWp3vAgQipKhrtI_qIrO2yGh-GI4Ixh7WjInzV1fyxR6o4r_Q4y77XkRMbFBJVKT3Ov5GaWHwA8i',
    name: 'Apple',
    category: 'Fruit',
    price: 42,
    size: 'Large',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta risus id urna luctus efficitur. Suspendisse vulputate faucibus est, a vehicula sem eleifend quis.',
  ),
];