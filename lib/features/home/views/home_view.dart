import 'package:flutter/material.dart';

import '../../../core/models/category_model.dart';
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
  final List<CategoryModel> _categories = [
    CategoryModel(id: 1, name: "All Coffee"),
    CategoryModel(id: 2, name: "Macchiato"),
    CategoryModel(id: 3, name: "Latte"),
    CategoryModel(id: 4, name: "Americano"),
  ];

  int _selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          HomeBackground(),

          SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // location
                  SizedBox(height: 50),
                  LocationWidget(),

                  // search
                  SizedBox(height: 24),
                  SearchWidget(),

                  // banner
                  SizedBox(height: 24),
                  HomeBanner(),

                  // category
                  SizedBox(height: 24),

                  SizedBox(
                    height: 35,
                    child: ListView.separated(
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 16);
                      },

                      scrollDirection: Axis.horizontal,
                      itemCount: _categories.length,

                      itemBuilder: (BuildContext context, int index) {
                        final CategoryModel category = _categories[index];

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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
