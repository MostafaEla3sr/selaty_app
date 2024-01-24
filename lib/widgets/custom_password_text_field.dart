import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomPasswordTextFormField extends StatefulWidget {
  const CustomPasswordTextFormField({
    Key? key,
    required this.text,
    required this.width,
    required this.height,
  }) : super(key: key);

  final String text;
  final double width , height;

  @override
  State<CustomPasswordTextFormField> createState() =>
      _CustomPasswordTextFormFieldState();
}

class _CustomPasswordTextFormFieldState
    extends State<CustomPasswordTextFormField> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: TextFormField(
        validator: (value) {
          if(value!.isEmpty){
            return '${widget.text} مطلوب';
          }else{return null;}
        },
        obscureText: !showPassword,
        decoration: InputDecoration(
          contentPadding:
          const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          suffixIcon: IconButton(
            icon: !showPassword? const Icon(
              FontAwesomeIcons.eye,
              color: Colors.grey,
              size: 18,
            ): const Icon(
              FontAwesomeIcons.eyeSlash,
              color: Colors.grey,
              size:18,
            ),
            onPressed: () {
              print(showPassword);

              if (showPassword == true) {
                showPassword = false;
              } else {
                showPassword = true;
              }

              setState(() {});
              print(showPassword);
            },
          ),
          label: Text(
            widget.text,
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
          border: const OutlineInputBorder(
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
