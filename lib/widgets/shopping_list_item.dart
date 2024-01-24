import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:selaty_app/constants.dart';
import 'package:selaty_app/widgets/styles.dart';

class ShoppingListItem extends StatefulWidget {
  const ShoppingListItem({Key? key}) : super(key: key);

  @override
  State<ShoppingListItem> createState() => _ShoppingListItemState();
}

class _ShoppingListItemState extends State<ShoppingListItem> {
  bool isClicked = false;
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return isClicked
        ? GestureDetector(
            onTap: () {
              setState(() {
                isClicked = false;
              });
            },
            child: Container(
              height: 130,
              child: Row(
                children: [
                  Container(
                    height: double.infinity,
                    width: 80,
                    decoration: BoxDecoration(
                      color: kRed,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: Icon(
                      FontAwesomeIcons.trashCan,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    count ++;
                                  });
                                },
                                icon: Icon(
                                  FontAwesomeIcons.plus,
                                  size: 16,
                                ),
                              ),

                              Text(
                                count.toString(),
                                style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    count --;
                                  });
                                },
                                icon: Icon(
                                  FontAwesomeIcons.minus,
                                  size: 16,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                r'35.00$ ''x$count',
                                textDirection: TextDirection.ltr,
                                style: Styles.textStyle16Bold.copyWith(
                                    color: kGreen,
                                ),
                              ),
                              Text(
                                'كمثرى امريكي',
                                style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold,),
                              ),
                              Text(
                                '1 kg',
                                textDirection: TextDirection.ltr,
                                style: Styles.textStyle16,
                              ),
                            ],
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              setState(() {
                isClicked = true;
              });
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            count ++;
                          });
                        },
                        icon: Icon(
                          FontAwesomeIcons.plus,
                          size: 16,
                        ),
                      ),

                      Text(
                        count.toString(),
                        style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold,),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            count --;
                          });
                        },
                        icon: Icon(
                          FontAwesomeIcons.minus,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        r'35.00$ ''x$count',
                        textDirection: TextDirection.ltr,
                        style: Styles.textStyle16Bold.copyWith(color: kGreen,),
                      ),
                      Text(
                        'كمثرى امريكي',
                        style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '1 kg',
                        textDirection: TextDirection.ltr,
                        style: Styles.textStyle16,
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
          );
  }
}
