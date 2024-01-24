import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
        required this.text,
        this.icon,
        this.isPassword = false,
        required this.width,  this.onSaved, this.onChanged, required this.height})
      : super(key: key);
  final String text;

  final Icon? icon;
  final bool isPassword;
  final double width , height;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        onSaved: onSaved,
        onChanged: onChanged,
        validator: (value) {
          if(value!.isEmpty){
            return '$text مطلوب';
          }else{return null;}
        },
        obscureText: isPassword,
        decoration: InputDecoration(
          contentPadding:
          EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          suffixIcon: icon,
          label: Text(
            text,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(
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
