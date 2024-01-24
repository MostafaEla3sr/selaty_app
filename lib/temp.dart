import 'package:flutter/material.dart';
import 'package:selaty_app/widgets/custom_app_bar.dart';

import '../constants.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class Temp extends StatelessWidget {
  const Temp({Key? key}) : super(key: key);
  static const String id = 'temp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFDFDFF),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: SizedBox(
                height: constraints.maxHeight ,
                child: Column(
                  mainAxisSize: MainAxisSize.max ,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CustomAppBar(),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/logo.png',
                          width: constraints.maxWidth /6,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Column(
                          children: [
                            Text(
                              'ســـــــــــلتي',
                              style: TextStyle(
                                color: kRedText,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'NotoKufiArabic',
                              ),
                            ),
                            Text(
                              'S    E    L    A    T    Y',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                      width: MediaQuery.of(context).orientation == Orientation.portrait
                          ? constraints.maxWidth
                          : constraints.maxWidth / 2,
                      text: 'عنوان البريد الالكتروني',
                      icon: Icon(
                        Icons.check_circle_outline,
                        color: kGreen,
                        size: 28,
                      ),
                    ),
                    CustomTextField(
                      width: MediaQuery.of(context).orientation == Orientation.portrait
                          ? constraints.maxWidth
                          : constraints.maxWidth / 2,
                      isPassword: true,
                      text: 'كلمة السـر',
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.grey,
                        size: 28,
                      ),
                    ),
                    const Text(
                      'هل نسيت كلمة السـر',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Cairo',
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomButton(
                      text: 'تسجيل الدخول',
                      color: kGreen,
                      onTap: () {},
                      width: MediaQuery.of(context).orientation == Orientation.portrait
                          ? constraints.maxWidth
                          : constraints.maxWidth / 2,
                    ),
                    const Spacer(),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ' تسجيل الدخول\u25B6',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Cairo',
                          ),
                        ),
                        Text(
                          'لديك حساب بالفعل؟',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Cairo',
                          ),
                        ),
                      ],
                    ),
















                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}


//
// CustomScrollView(
// slivers: [
// Column(
// children: [
// SliverList(
// delegate: SliverChildBuilderDelegate(
// childCount: 5,
// (context, index) => const Padding(
// padding: EdgeInsets.only(bottom: 10),
// child: ShoppingListItem(),
// ),
// ),
//
//
// ),
// const SliverToBoxAdapter(child: SizedBox(height: 20,)),
// SliverToBoxAdapter(
// child: Padding(
// padding: const EdgeInsets.symmetric(horizontal: 20),
// child: Container(
// decoration: const BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.all(
// Radius.circular(8),
// ),
// ),
// child: const Padding(
// padding: EdgeInsets.all(20.0),
// child: Column(
// children: [
// Row(
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// 'البنود',
// style:
// TextStyle(                                   fontWeight: FontWeight.bold,
// fontSize: 18 , color: Colors.grey),
// ),
// Text(
// 'المجموع الفرعي',
// style:
// TextStyle(                                  fontWeight: FontWeight.bold,
// fontSize: 18, color: Colors.grey),
// ),
// Text(
// 'رسوم التوصيل',
// style:
// TextStyle(                                  fontWeight: FontWeight.bold,
// fontSize: 18, color: Colors.grey),
// ),
// ],
// ),
// Spacer(),
// Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// '4',
// textDirection: TextDirection.ltr,
// style: TextStyle(
// fontWeight: FontWeight.bold,
// fontSize: 16,
// color: Colors.grey),
// ),
// Text(
// r'100.00 $',
// textDirection: TextDirection.ltr,
// style: TextStyle(
// fontWeight: FontWeight.bold,
// fontSize: 16,
// color: Colors.grey),
// ),
// Text(
// 'Free',
// textDirection: TextDirection.ltr,
// style: TextStyle(
// fontWeight: FontWeight.bold,
// fontSize: 16,
// color: Colors.grey),
// ),
// ],
// ),
// ],
// ),
// SizedBox(height: 30,),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Text(
// 'الاجمالي',
// style: TextStyle(
// fontWeight: FontWeight.bold,
// fontSize: 20,
// color: Colors.black),
// ),
// Text(
// '100.00 SAR',
// textDirection: TextDirection.ltr,
// style: TextStyle(
// fontWeight: FontWeight.bold,
// fontSize: 20,
// color: Colors.black),
// ),
// ],
// ),
// ],
// ),
// ),
// ),
// ),
// ),
// const SliverToBoxAdapter(child: SizedBox(height: 10,)),
// SliverToBoxAdapter(
// child: Padding(
// padding: const EdgeInsets.symmetric(horizontal: 20),
// child: CustomButton(text: 'الدفع', color: kGreen, onTap: (){
// Navigator.pushNamed(context, EmptyShoppingCartView.id);
// }, width: double.infinity),
// ),
// ),
// ],
// )
// ],
// ),