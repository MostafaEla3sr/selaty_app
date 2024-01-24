import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.text,
      this.icon,
      this.isPassword = false,
      required this.width,  this.height = 50})
      : super(key: key);
  final String text;

  final Icon? icon;
  final bool isPassword;
  final double width , height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          suffixIcon: icon,
          label: Text(
            text,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
