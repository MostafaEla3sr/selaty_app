import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:selaty_app/widgets/styles.dart';

import '../constants.dart';

class AddressListItem extends StatefulWidget {
  const AddressListItem({Key? key}) : super(key: key);

  @override
  State<AddressListItem> createState() => _AddressListItemState();
}

class _AddressListItemState extends State<AddressListItem> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.sizeOf(context).width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: kGreen.withOpacity(0.2),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      )),
                  child:  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'افتراضي',
                      style: Styles.textStyle12Bold.copyWith(
                          color: kGreen,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              isClicked
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          isClicked = false;
                        });
                      },
                      icon: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                            border: Border.all(color: kRed, width: 2)),
                        child: const Icon(
                          Icons.circle,
                          color: kRed,
                          size: 18,
                        ),
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        setState(() {
                          isClicked = true;
                        });
                      },
                      icon: const Icon(
                        Icons.circle_outlined,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
              const Text(
                'المـنـزل',
                style: Styles.textStyle16Bold,
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.ellipsis,
                  size: 24,
                ),
              ),
            ],
          ),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '5 - ح السيد عبدالحميد - ش دنشواي\n5 - ح السيد عبدالحميد - ش دنشواييييييييييييييييييييييييييييي',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis
                  ,style: Styles.textStyle16Bold.copyWith(
                  color: Colors.grey
                ),
                ),
                Text(
                  'شبين الكوم - المنوفيه',
                  style: Styles.textStyle16Bold.copyWith(color: Colors.grey),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: [
                Text(
                  'جوال : ',
                  style: Styles.textStyle16Bold,
                ),
                Text(
                  '01067859354',
                  style: Styles.textStyle16Bold,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
