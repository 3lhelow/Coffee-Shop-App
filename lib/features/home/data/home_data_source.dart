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
      description:
      "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo",
      type: "Deep Foam",
      price: 6.53,
      rate: 4.5,
    ),
    ProductsModel(
      id: 2,
      name: "Caffe Mocha",
      image: AppImages.product02,
      description:
      "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo",
      type: "Deep Foam",
      price: 2.53,
      rate: 4.5,
    ),
    ProductsModel(
      id: 3,
      name: "Caffe Mocha",
      image: AppImages.product03,
      description:
      "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo",
      type: "Deep Foam",
      price: 8.53,
      rate: 4.5,
    ),
    ProductsModel(
      id: 4,
      name: "Caffe Mocha",
      image: AppImages.product04,
      description:
      "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo",
      type: "Deep Foam",
      price: 5.53,
      rate: 4.5,
    ),
    ProductsModel(
      id: 5,
      name: "Caffe Mocha",
      image: AppImages.product05,
      description:
      "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo",
      type: "Deep Foam",
      price: 4.53,
      rate: 4.5,
    ),
  ];
}
