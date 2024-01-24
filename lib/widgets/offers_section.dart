import 'package:flutter/material.dart';
import 'package:selaty_app/constants.dart';
import 'package:selaty_app/models/discount_model.dart';
import 'package:selaty_app/widgets/styles.dart';


class OffersSection extends StatelessWidget {
  const OffersSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DiscountItem(index: 0),
              DiscountItem(index: 1),
              DiscountItem(index: 2),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 0.3,
                height:MediaQuery.sizeOf(context).width * 0.3,
                decoration: BoxDecoration(
                  color:kOrange,
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'اشتري 1 واحصل على 1',
                      style:  Styles.textStyle18.copyWith(color: Colors.white),
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      'مجانا',
                      style:  Styles.textStyle28.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.3,
                height:MediaQuery.sizeOf(context).width * 0.3,
                decoration: BoxDecoration(
                  color:kOlive,
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'اقل',
                      style:  Styles.textStyle28,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          'SAR',
                          style:  Styles.textStyle28,
                        ),Text(
                          textAlign: TextAlign.center,
                          '99 ',
                          style: Styles.textStyle32,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.3,
                height:MediaQuery.sizeOf(context).width * 0.3,
                decoration: BoxDecoration(
                  color:kSkyBlue,
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'اختيارات الشهــر',
                      style:  Styles.textStyle28,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );

  }
}

class DiscountItem extends StatelessWidget {
   DiscountItem({
    super.key, required this.index,
  });
  final int index;

  final List<DiscountModel> discountList = [
    DiscountModel(kPurple, discount: '30%'),
    DiscountModel(kBlue, discount: '40%'),
    DiscountModel(kRed, discount: '50%'),
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.3,
      height:MediaQuery.sizeOf(context).width * 0.3,
      decoration: BoxDecoration(
        color:discountList[index].color ,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
            'عرض',
            style: Styles.textStyle16.copyWith(color: Colors.white),
          ),
          Text(
            discountList[index].discount,
            style:Styles.textStyle32,
          ),
           Text(
            'خصم',
            style: Styles.textStyle16.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}



