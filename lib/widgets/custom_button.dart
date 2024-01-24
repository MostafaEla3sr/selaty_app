import 'package:flutter/material.dart';
import 'package:selaty_app/widgets/styles.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text, required this.color, required this.onTap, required this.width, this.height = 50}) : super(key: key);
  final String text ;
  final Color color;
  final VoidCallback onTap;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: color,
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              text,
              style:Styles.textStyle18.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
