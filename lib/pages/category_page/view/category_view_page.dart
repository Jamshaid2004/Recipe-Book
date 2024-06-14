import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_book/pages/category_page/model/category_model.dart';
import 'package:recipe_book/pages/category_page/widgets/app_bar_design.dart';
import 'package:recipe_book/pages/category_page/widgets/category_list.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});
  static const pageAddress = '/category';
  @override
  Widget build(BuildContext context) {
    final List<CategoryItem> categories = Get.arguments;
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: constraints.maxHeight * 0.25,
              forceElevated: false,
              pinned: true,
              flexibleSpace: const AppBarDesign(
                categoryImage:
                    'https://www.themealdb.com/images/category/beef.png',
              ),
            ),
            CategoryList(categories: categories),
          ],
        ),
      ),
    );
  }
}
