class Hotel {
  String imageUrl;
  String name;
  String description;
  double rating;
  String price;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.price,
    required this.rating,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/image2.jpg',
    name: 'Kuta Resort',
    description: 'A resort is a place for\nvacation, relaxation or as a day...',
    price: '20,000',
    rating: 4.8,
  ),
  Hotel(
    imageUrl: 'assets/images/image1.jpg',
    name: 'Baga Beach Resort',
    description: 'A resort is a place for\nvacation, relaxation or as a day...',
    price: '15,000',
    rating: 4.8,
  ),
  Hotel(
    imageUrl: 'assets/images/image2.jpg',
    name: 'Kuta Resort',
    description: 'A resort is a place for\nvacation, relaxation or as a day...',
    price: '20,000',
    rating: 4.8,
  ),
  Hotel(
    imageUrl: 'assets/images/image1.jpg',
    name: 'Baga Beach Resort',
    description: 'A resort is a place for\nvacation, relaxation or as a day...',
    price: '15,000',
    rating: 4.8,
  ),
];


/*class Activity {
  String imageUrl;
  String name;
  String type;
  List<String> time;
  int rating;
  double price;

  Activity(
      {required this.imageUrl,
      required this.name,
      required this.type,
      required this.time,
      required this.rating,
      required this.price});
}
 */