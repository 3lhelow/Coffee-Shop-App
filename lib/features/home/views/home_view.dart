import 'package:coffee_shop_app/features/home/data/home_data_source.dart';
import 'package:coffee_shop_app/features/home/widgets/products_item.dart';
import 'package:flutter/material.dart';

import '../../../core/models/category_model.dart';
import '../../../core/models/products_model.dart';
import '../../../core/shard/buttons.dart';
import '../widgets/home_background.dart';
import '../widgets/home_banner.dart';
import '../widgets/location_widget.dart';
import '../widgets/search_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final HomeDataSource _dataSource = HomeDataSource();

  int _selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const HomeBackground(),

          SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // location
                  const SizedBox(height: 50),
                  const LocationWidget(),

                  // search
                  const SizedBox(height: 24),
                  const SearchWidget(),

                  // banner
                  const SizedBox(height: 24),
                  const HomeBanner(),

                  // category
                  const SizedBox(height: 24),

                  SizedBox(
                    height: 35,
                    child: ListView.separated(
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(width: 16);
                      },

                      scrollDirection: Axis.horizontal,
                      itemCount: _dataSource.categories.length,

                      itemBuilder: (BuildContext context, int index) {
                        final CategoryModel category = _dataSource.categories[index];

                        return CategoryButton(
                          isSelected: index == _selectedCategoryIndex,
                          onTap: () {
                            setState(() {
                              _selectedCategoryIndex = index;
                            });
                          },
                          category: category,
                        );
                      },
                    ),
                  ),

                  // Products
                  Expanded(
                    child: GridView.builder(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      itemCount: _dataSource.products.length,

                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 15,
                        childAspectRatio: 1 / 1.7,
                      ),

                      itemBuilder: (BuildContext context, int index) {
                        final ProductsModel product = _dataSource.products[index];
                        return ProductsItem(product: product);
                      },

                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
