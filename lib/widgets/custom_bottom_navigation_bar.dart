import 'package:flutter/material.dart';
import 'package:selaty_app/views/profile_view.dart';

import '../constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      // fixedColor: kOlive,
      showSelectedLabels: false,
      showUnselectedLabels: false,

      currentIndex: 2,
      // currentIndex: snapshot.data.index,
      // onTap: _bottomNavBarBloc.pickItem,
      items: [
         BottomNavigationBarItem(
          label: 'profile',
          icon: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, ProfileView.id);
              },
              child: Icon(Icons.person_outline)),
        ),
        const BottomNavigationBarItem(
          label: 'Browse',
          icon: Icon(Icons.notifications_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Icon',
          icon: Container(
            decoration: const BoxDecoration(
              color: kGreen,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
          ),
        ),
        const BottomNavigationBarItem(
          label: 'Favorites',
          icon: Icon(Icons.favorite_border),
        ),
        const BottomNavigationBarItem(
          label: 'search',
          icon: Icon(Icons.search),
        ),
      ],
    );
  }
}
