class HouseModel {
  final String image;
  final String name;
  final String city;
  final double rating;

  HouseModel({
    required this.image,
    required this.name,
    required this.city,
    required this.rating,
  });
}

List<HouseModel> popular = [
  HouseModel(
    image: 'modern_house.png',
    name: 'Modern House',
    city: 'Bandung',
    rating: 4.5,
  ),
  HouseModel(
    image: 'white_house.png',
    name: 'White House',
    city: 'Jakarta',
    rating: 4.3,
  ),
];

List<HouseModel> recommendation = [
  HouseModel(
    image: 'wooden_house.png',
    name: 'Wooden House',
    city: 'Bandung',
    rating: 4.0,
  ),
  HouseModel(
    image: 'triangle_house.png',
    name: 'Triangle House',
    city: 'Bogor',
    rating: 4.1,
  ),
  HouseModel(
    image: 'hill_house.png',
    name: 'Hill House',
    city: 'Makasar',
    rating: 4.3,
  ),
];
