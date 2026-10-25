class ProductsModel {
  final int id;
  final String name;
  final String image;
  final String description;
  final String type;
  final double price;
  final double rate;
  final int totalOrders;

  ProductsModel({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.type,
    required this.price,
    required this.rate,
    required this.totalOrders,
  });
  
}