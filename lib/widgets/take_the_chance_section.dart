import 'package:flutter/material.dart';
import 'package:selaty_app/widgets/take_the_chance_item.dart';

class TakeTheChanceSection extends StatelessWidget {
  const TakeTheChanceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10 ,bottom: 20),
      child: SizedBox(
        height: 190,
        child: GridView.builder(
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          itemCount: 8,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 2 / 1.3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 20),
          itemBuilder: (context, index) => const TakeTheChanceItem(),
        ),
      ),
    );
  }
}
