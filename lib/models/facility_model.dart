class FacilityModel {
  final String image;
  final String name;

  FacilityModel({
    required this.image,
    required this.name,
  });
}

List<FacilityModel> modernHouseFacilities = [
  FacilityModel(
    image: 'swimming_pool.png',
    name: 'Swimming Pool',
  ),
  FacilityModel(
    image: 'bedroom.png',
    name: '4 Bedroom',
  ),
  FacilityModel(
    image: 'garage.png',
    name: 'Garage',
  ),
];
