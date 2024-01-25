import 'package:flutter/material.dart';
import 'package:selaty_app/views/AllCategoriesView.dart';

import 'package:selaty_app/widgets/favouraites_section.dart';
import 'package:selaty_app/widgets/styles.dart';
import 'package:selaty_app/widgets/take_the_chance_section.dart';

import '../widgets/best_seller_section.dart';
import '../widgets/categories_section.dart';
import '../widgets/custom_headline.dart';
import '../widgets/fresh_and_fast_section.dart';
import '../widgets/header_section.dart';
import '../widgets/offers_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  static const String id = 'HomeView';

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        clipBehavior: Clip.none,
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
          const SliverToBoxAdapter(
            child: HeaderSection(),
          ),
          SliverToBoxAdapter(
              child: CustomHeadline(
            headline: 'القيمه الافضل',
            subHeadline: 'اعلى المبيعات',
            onTap: () {},
          )),
          const SliverToBoxAdapter(
            child: FavouritesSection(),
          ),
          SliverToBoxAdapter(
              child: CustomHeadline(
            headline: 'التصنيفات',
            onTap: () {
              Navigator.pushNamed(context, AllCategoriesView.id);
            },
          )),
          const SliverToBoxAdapter(
            child: CategoriesSection(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'الأكثر مبيعا',
                    style: Styles.textStyle18Bold,
                  ),
                  Text(
                    ' ➤ مشاهدة الكل',
                    style: Styles.textStyle12.copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: BestSellerSection(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                  right: isPortrait ? 10 : MediaQuery.sizeOf(context).width / 4,
                  left: isPortrait ? 10 : MediaQuery.sizeOf(context).width / 4,
                  top: 20),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 180,
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Image.asset(
                  'assets/images/fruits_img.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 10, left: 10, top: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'تسوق حسب العروض',
                    style: Styles.textStyle18Bold,
                  ),
                  Text(
                    ' ➤ مشاهدة الكل',
                    style: Styles.textStyle12.copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: OffersSection(),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'طازج وسريع',
                    style: Styles.textStyle18Bold,
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: FreshAndFastSection(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                  right: isPortrait ? 10 : MediaQuery.sizeOf(context).width / 4,
                  left: isPortrait ? 10 : MediaQuery.sizeOf(context).width / 4,
                  top: 20),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 180,
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Image.asset(
                  'assets/images/fruits_img.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 10, left: 10, top: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'انتهز الفرصة',
                    style: Styles.textStyle18Bold,
                  ),
                  Text(
                    ' ➤ مشاهدة الكل',
                    style: Styles.textStyle12.copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: TakeTheChanceSection(),
          )
        ],
      ),
    );
  }
}
