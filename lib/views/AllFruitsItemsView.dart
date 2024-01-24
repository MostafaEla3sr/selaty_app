import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:selaty_app/constants.dart';
import 'package:selaty_app/widgets/custom_app_bar.dart';
import 'package:selaty_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:selaty_app/widgets/custom_floating_action_button.dart';
import 'package:selaty_app/widgets/item_card.dart';

class AllFruitsItemsView extends StatelessWidget {
  const AllFruitsItemsView({Key? key}) : super(key: key);
  static const String id=  'AllFruitsItemsView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: CustomScrollView(
         physics: const BouncingScrollPhysics(),
         slivers: [
               SliverToBoxAdapter(
             child: Stack(
               clipBehavior: Clip.none,
               children: [
                 Container(
                   height: 130,
                   decoration: const BoxDecoration(
                     color: kGreen,
                   ),
                   child: const CustomAppBar(
                     title: 'الفاكهة',
                     titleColor: Colors.white,
                   ),
                 ),
                 Positioned(
                   right: MediaQuery.sizeOf(context).width / 2 -45,
                   bottom: -40,
                   // left: MediaQuery.of(context).orientation == Orientation.portrait ? 50 :55,
                   child: CircleAvatar(
                     radius: 45,
                     backgroundColor: Colors.white.withOpacity(0.5),
                     child: CircleAvatar(
                       radius: 40,
                       backgroundColor: Colors.white,
                       child: Image.asset(
                         'assets/images/fruit_icon.png',
                         width: 70,
                       ),
                     ),
                   ),
                 ),
               ],
             ),
           ),
           const SliverToBoxAdapter(
             child: SizedBox(
               height: 50,
             ),
           ),
           SliverToBoxAdapter(
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
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
           ),
            const SliverToBoxAdapter(
             child: SizedBox(
               height: 20,
             ),
           ),
           SliverPadding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             sliver: SliverGrid(
               delegate: SliverChildBuilderDelegate(
               childCount: 10,
                   (context, index) =>  const ItemCard(),

             ), gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount:MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 4,
                 childAspectRatio: 1.4 / 2,
                 mainAxisSpacing: 20,
                 crossAxisSpacing: 20),
             ),
           ),
         ],
       ),
      bottomNavigationBar:const CustomBottomNavigationBar(),
      floatingActionButton: const CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
