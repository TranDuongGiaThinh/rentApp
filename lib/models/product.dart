class Product {
  int id;
  int idOwner;
  String pathImage;
  String name;
  String price;
  int bedrooms;
  int bathroom;
  String address;
  String description;
  List<String> images;

  Product({
    required this.id,
    required this.idOwner,
    required this.pathImage,
    required this.name,
    required this.price,
    required this.bedrooms,
    required this.bathroom,
    required this.address,
    required this.description,
    required this.images
  });
}
