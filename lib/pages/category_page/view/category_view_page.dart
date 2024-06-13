import 'package:flutter/material.dart';
import 'package:recipe_book/pages/category_page/model/category_model.dart';
import 'package:recipe_book/pages/category_page/widgets/app_bar_design.dart';
import 'package:recipe_book/pages/category_page/widgets/category_list.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});
  static const pageName = '/category';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: constraints.maxHeight * 0.25,
              surfaceTintColor: Colors.transparent,
              shadowColor: Colors.transparent,
              forceElevated: false,
              pinned: true,
              flexibleSpace: const AppBarDesign(),
            ),
            const CategoryList(categories: categoriesDummyList)
          ],
        ),
      ),
    );
  }
}
