import 'package:coffee_shop_app/core/constants/image_constant.dart';
import 'package:coffee_shop_app/core/models/products_model.dart';
import '../../../core/models/category_model.dart';

class HomeDataSource {
  List<CategoryModel> get categories => [
    CategoryModel(id: 1, name: "All Coffee"),
    CategoryModel(id: 2, name: "Macchiato"),
    CategoryModel(id: 3, name: "Latte"),
    CategoryModel(id: 4, name: "Americano"),
  ];

  List<ProductsModel> get products => [
    ProductsModel(
      id: 1,
      name: "Caffe Mocha",
      image: AppImages.product01,
      description: "A chocolate-flavored variant of a caffè latte, traditionally mixed with a sweet chocolate syrup.",
      type: "Deep Foam",
      price: 6.53,
      rate: 4.5,
      totalOrders: 230,
    ),
    ProductsModel(
      id: 2,
      name: "Macchiato",
      image: AppImages.product02,
      description: "An espresso coffee drink with a small amount of milk, traditionally foamed.",
      type: "Espresso",
      price: 4.50,
      rate: 4.7,
      totalOrders: 20,
    ),
    ProductsModel(
      id: 3,
      name: "Latte",
      image: AppImages.product03,
      description: "A coffee drink of Italian origin made with espresso and steamed milk.",
      type: "Steamed Milk",
      price: 5.20,
      rate: 4.6,
      totalOrders: 130,
    ),
    ProductsModel(
      id: 4,
      name: "Americano",
      image: AppImages.product04,
      description: "A type of coffee drink prepared by diluting an espresso with hot water.",
      type: "Hot Water",
      price: 3.80,
      rate: 4.3,
      totalOrders: 26,
    ),
    ProductsModel(
      id: 5,
      name: "Cappuccino",
      image: AppImages.product05,
      description: "A classic Italian coffee masterpiece featuring equal parts espresso, steamed milk, and velvety microfoam. Expertly balanced to deliver a bold coffee flavor with a smooth, creamy finish that coffee lovers crave.",
      type: "Rich Foam",
      price: 4.90,
      rate: 4.8,
      totalOrders: 30,
    ),
  ];
}