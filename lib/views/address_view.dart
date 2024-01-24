import 'package:flutter/material.dart';
import 'package:selaty_app/views/successful_order_view.dart';
import 'package:selaty_app/widgets/address_list_item.dart';
import 'package:selaty_app/widgets/styles.dart';

import '../constants.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_button.dart';

class AddressView extends StatelessWidget {
  const AddressView({Key? key}) : super(key: key);
  static const String id = 'AddressView';

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'عنوان التسليم',
      ),
      body: isPortrait
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'يشحن الى',
                      style: Styles.textStyle18.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,

                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width,

                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) => const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: AddressListItem(),
                        ),
                      ),
                    ),
                  ),
                  CustomButton(
                    text: 'التسليم لهذا العنوان',
                    color: kGreen,
                    onTap: () {
                      Navigator.pushNamed(context, SuccessfulOrderView.id);
                    },
                    width: MediaQuery.sizeOf(context).width,
                    height: 60
                    ,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    'يشحن الى :',
                    style: Styles.textStyle18.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,

                    ),
                  ),

                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          height:220,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) => const SizedBox(
                                width: 345,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: AddressListItem(),
                                )),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: CustomButton(
                            text: 'التسليم لهذا العنوان',
                            color: kGreen,
                            onTap: () {
                              Navigator.pushNamed(context, SuccessfulOrderView.id);
                            },
                            width: MediaQuery.sizeOf(context).width,
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
    );
  }
}
