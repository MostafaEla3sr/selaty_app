import 'package:flutter/material.dart';

import 'item_card.dart';
class BestSellerSection extends StatelessWidget {
  const BestSellerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: SizedBox(
        height: 480,
        child: GridView.builder(
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          itemCount:10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 1.4,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10),
          itemBuilder: (context, index) => const ItemCard(),
        ),
      ),
    );
  }
}
