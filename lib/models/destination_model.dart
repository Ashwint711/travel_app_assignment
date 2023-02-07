class Destination {
  String imageUrl;
  String city;
  String country;
  String destinationName;
  String description;
  double rating;
  String longDescription;
  String price;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.destinationName,
    required this.rating,
    required this.description,
    required this.longDescription,
    required this.price,

    // required this.activities
  });
}

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/image0.jpg',
    destinationName: 'Kuta Beach',
    city: 'Bali',
    country: 'Indonesia',
    rating: 4.2,
    description: 'Vist Venice for an amazing and unforgettable adventure',
    longDescription:
        "One of the most happening beaches in Goa, Baga Beach Beach is where\nyou will find water sports, fine dining restaurants, bars, and clubs. Situated\nint North Goa, Baga Beach is borderedby Calangute and Anjuna\nBeaches.",
    price: '15,000',
  ),
  Destination(
    imageUrl: 'assets/images/image1.jpg',
    destinationName: 'Baga Beach',
    city: 'Goa',
    country: 'India',
    rating: 4.8,
    description: 'Vist Paris for an amazing and unforgettable adventure',
    longDescription:
        "One of the most happening beaches in Goa, Baga Beach Beach is where\nyou will find water sports, fine dining restaurants, bars, and clubs. Situated\nint North Goa, Baga Beach is borderedby Calangute and Anjuna\nBeaches.",
    price: '15,000',
  ),
  Destination(
    imageUrl: 'assets/images/image0.jpg',
    destinationName: 'Kuta Beach',
    city: 'Bali',
    country: 'Indonesia',
    rating: 4.2,
    description: 'Vist Venice for an amazing and unforgettable adventure',
    longDescription:
        "One of the most happening beaches in Goa, Baga Beach Beach is where\nyou will find water sports, fine dining restaurants, bars, and clubs. Situated\nint North Goa, Baga Beach is borderedby Calangute and Anjuna\nBeaches.",
    price: '15,000',
  ),
  Destination(
    imageUrl: 'assets/images/image1.jpg',
    destinationName: 'Baga Beach',
    city: 'Gao',
    rating: 2.0,
    country: 'India',
    description: 'Vist Paris for an amazing and unforgettable adventure',
    longDescription:
        "One of the most happening beaches in Goa, Baga Beach Beach is where\nyou will find water sports, fine dining restaurants, bars, and clubs. Situated\nint North Goa, Baga Beach is borderedby Calangute and Anjuna\nBeaches.",
    price: '15,000',
  ),
];
