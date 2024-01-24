import 'package:flutter/material.dart';

import 'favourite_item.dart';
class FavouritesSection extends StatelessWidget {
  const FavouritesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => FavouriteItem() ,
      ),
    );
  }
}
