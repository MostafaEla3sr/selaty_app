import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:selaty_app/views/profile_view.dart';
import 'package:selaty_app/widgets/styles.dart';

import '../constants.dart';
class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, ProfileView.id);
                } ,
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.orange,
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: Image.asset(
                        'assets/images/person.png',
                        width: 50,
                      ),
                    ),
                  ),
                ),
              ),
               Column(
                children: [
                  const Text(
                    'مصطفى الاعصر',
                    style: Styles.textStyle16,
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                          radius: 9,
                          backgroundColor: Colors.white,
                          child: Icon(
                            FontAwesomeIcons.locationDot,
                            color: kRed,
                            size: 16,
                          )),
                      Text(
                        'المنوفية - شبين الكوم',
                        style: Styles.textStyle16.copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Container(
                width: 35.0, // Adjust the width as needed
                height: 35.0, // Adjust the height as needed
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  // border: Border.all(
                  //   color: Colors.grey,
                  //   width: 1.0,
                  // ),
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      // Your onPressed logic here
                    },
                    iconSize: 16, // Adjust the icon size as needed
                    icon: const Icon(
                      Icons.camera_alt_outlined,
                    ),
                    color: Colors.black, // Set the icon color
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50, // Adjust the width as needed
                height: 50, // Adjust the height as needed
                decoration: BoxDecoration(
                  color: kRed,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      // Your onPressed logic here
                    },
                    iconSize: 24, // Adjust the icon size as needed
                    icon: const Icon(
                      FontAwesomeIcons.sliders,
                      color: Colors.white,
                    ),
                    color: Colors.black, // Set the icon color
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          )),
                      labelText: 'البحث عن المنتجات...',
                      labelStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(
                        FontAwesomeIcons.xmark,
                        color: Colors.black,
                        size: 12,
                      ),
                      suffixIcon: Icon(
                        FontAwesomeIcons.magnifyingGlass,
                        color: Colors.grey,
                        size: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
