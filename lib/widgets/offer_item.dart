// import 'package:flutter/material.dart';
// import 'package:selaty_app/constants.dart';
// import 'package:selaty_app/widgets/offers_section.dart';
//
// class OfferItem extends StatelessWidget {
//    OfferItem({Key? key, required this.offer}) : super(key: key);
//   final Offer offer;
//   final List<Offer> offerList = [
//     Offer(kPurple, discount: '30%'),
//     Offer(kBlue, discount: '40%'),
//     Offer(kRed, discount: '50%'),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: offerList.length,
//       itemBuilder: (context, index) => Container(
//       decoration: BoxDecoration(
//         color: offer.color,
//         borderRadius: BorderRadius.all(Radius.circular(8)),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             'عرض',
//             style: TextStyle(color: Colors.white, fontSize: 16),
//           ),
//           Text(
//             offer.discount[index],
//             style: TextStyle(
//                 color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
//           ),
//           Text(
//             'خصم',
//             style: TextStyle(color: Colors.white, fontSize: 16),
//           ),
//         ],
//       ),
//     ),);
//   }
// }
