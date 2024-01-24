import 'package:flutter/material.dart';
import 'package:selaty_app/widgets/styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
   const CustomAppBar({Key? key, this.title = '', this.titleColor  = Colors.black}) : super(key: key);
  final String title;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {

    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      actions: [
        const SizedBox(width: 20,),
        Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: IconButton(
              onPressed: () {
                // Your onPressed logic here
              },
              icon: const Icon(
                Icons.camera_alt_outlined,
                size: 20,
              ),
              color: Colors.black, // Set the icon color
            ),
          ),
        ),
        const Spacer(),
        Text(
          title,
          style:  Styles.textStyle18.copyWith(
              color: titleColor,
          ),
        ),
        const Spacer(),
        Container(
          width: 35, // Adjust the width as needed
          height: 35, // Adjust the height as needed
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
              color: Colors.black, // Set the icon color
            ),
          ),
        ),
        const SizedBox(width: 20,),


      ],
    );



    // return Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: [
    //     Container(
    //       width: 35.0,
    //       height: 35.0,
    //       decoration: BoxDecoration(
    //         color: Colors.white,
    //         borderRadius: BorderRadius.circular(8),
    //       ),
    //       child: Center(
    //         child: IconButton(
    //           onPressed: () {
    //             // Your onPressed logic here
    //           },
    //           iconSize: 16, // Adjust the icon size as needed
    //           icon: const Icon(
    //             Icons.camera_alt_outlined,
    //           ),
    //           color: Colors.black, // Set the icon color
    //         ),
    //       ),
    //     ),
    //
    //     Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 10),
    //       child: Text(
    //         title,
    //         style: Styles.textStyle18,
    //       ),
    //     ),
    //
    //     Container(
    //       width: 35.0, // Adjust the width as needed
    //       height: 35.0, // Adjust the height as needed
    //       decoration: BoxDecoration(
    //         color: Colors.white,
    //         borderRadius: BorderRadius.circular(8),
    //       ),
    //       child: Center(
    //         child: IconButton(
    //           onPressed: () {
    //             Navigator.pop(context);
    //           },
    //           iconSize: 16, // Adjust the icon size as needed
    //           icon: const Icon(
    //             Icons.arrow_forward_ios,
    //           ),
    //           color: Colors.black, // Set the icon color
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
