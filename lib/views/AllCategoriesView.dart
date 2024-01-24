import 'package:flutter/material.dart';
import 'package:selaty_app/widgets/custom_app_bar.dart';
import 'package:selaty_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:selaty_app/widgets/custom_floating_action_button.dart';

import '../widgets/category_item_categories_view.dart';

class AllCategoriesView extends StatelessWidget {
  const AllCategoriesView({Key? key}) : super(key: key);
  static const String id = 'AllCategoriesView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'التصنيفات',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                childCount: 10,
                (context, index) => const CategoryItemCategoriesView(),
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? 2
                          : 4,
                  childAspectRatio: 1 / 1,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      floatingActionButton: const CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
