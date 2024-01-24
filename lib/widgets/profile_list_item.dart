import 'package:flutter/material.dart';
import 'package:selaty_app/constants.dart';
import 'package:selaty_app/widgets/styles.dart';
class ProfileListItem extends StatelessWidget {
  const ProfileListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(24)),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.person,
              color: kRed,
              size: 32,
            ),
            Text('عنـي' , style: Styles.textStyle12Bold,),
          ],
        ),
      ),
    ) ;
  }
}
