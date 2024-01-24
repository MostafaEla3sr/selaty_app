import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:selaty_app/widgets/styles.dart';

class CustomButtonRegister extends StatelessWidget {
  const CustomButtonRegister({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
    required this.width,
  });

  final FaIcon icon;
  final String text;
  final Color color;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: color,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:10 ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              text,
              style: Styles.textStyle16.copyWith(
                color: color,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            icon,
          ],
        ),
      ),
    );
  }
}
