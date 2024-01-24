import 'package:flutter/material.dart';
import 'package:selaty_app/widgets/styles.dart';
class CustomHeadline extends StatelessWidget {
  const CustomHeadline({
    super.key, required this.headline, required this.onTap, this.subHeadline = '',
  });
  final String headline;
  final String subHeadline;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            headline,
            style: Styles.textStyle18,
          ),
          const SizedBox(width: 6,),
          Text(
            subHeadline,
            style:
            Styles.textStyle12,
          ),
          const Spacer(),
          GestureDetector(
            onTap: onTap,
            child: const Text(
              ' ➤ مشاهدة الكل',
              style: Styles.textStyle12,
            ),
          ),
        ],
      ),
    );
  }
}
