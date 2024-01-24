import 'package:flutter/material.dart';
import 'package:selaty_app/constants.dart';
import 'package:selaty_app/widgets/custom_app_bar.dart';
import 'package:selaty_app/widgets/custom_button.dart';
import 'package:selaty_app/widgets/custom_text_field.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:selaty_app/widgets/styles.dart';

import '../widgets/custom_button_register.dart';
import 'check_phone_number_view.dart';
import 'login_view.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);
  static const String id = 'RegisterView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFDFDFF),
      appBar: const CustomAppBar(),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? 20
                        : MediaQuery.sizeOf(context).width / 4),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 20
                        : 0,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Text(
                    'أنشاء حساب جديد',
                    style: Styles.textStyle28.copyWith(color: Colors.black),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Text('أدخل بياناتك لإنشاء حساب',
                      style: Styles.textStyle16.copyWith(color: Colors.grey)),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 20
                        : 10,
                  ),
                ),
                SliverToBoxAdapter(
                  child: CustomTextField(
                    width: orientation == Orientation.portrait
                        ? MediaQuery.sizeOf(context).width
                        : MediaQuery.sizeOf(context).width / 2,
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 50
                        : 40,
                    text: 'الاسم',
                  ),
                ),
                const SliverToBoxAdapter(
                    child: SizedBox(
                  height: 10,
                )),
                SliverToBoxAdapter(
                  child: CustomTextField(
                    width: orientation == Orientation.portrait
                        ? MediaQuery.sizeOf(context).width
                        : MediaQuery.sizeOf(context).width / 2,
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 50
                        : 40,
                    text: 'عنوان البريد الالكتروني',
                    icon: const Icon(
                      Icons.check_circle_outline,
                      color: kGreen,
                      size: 28,
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                    child: SizedBox(
                  height: 10,
                )),
                SliverToBoxAdapter(
                  child: CustomTextField(
                    width: orientation == Orientation.portrait
                        ? MediaQuery.sizeOf(context).width
                        : MediaQuery.sizeOf(context).width / 2,
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 50
                        : 40,
                    isPassword: true,
                    text: 'كلمة المرور',
                    icon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                      size: 24,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 20
                        : 0,
                  ),
                ),
                SliverToBoxAdapter(
                  child: CustomButton(
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 50
                        : 40,
                    text: 'اشتراك',
                    color: kGreen,
                    onTap: () {
                      Navigator.pushNamed(context, CheckPhoneNumberView.id);
                    },
                    width: orientation == Orientation.portrait
                        ? MediaQuery.sizeOf(context).width
                        : MediaQuery.sizeOf(context).width / 2,
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 20
                        : 0,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('أو اشترك مع', style: Styles.textStyle16),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButtonRegister(
                            width: orientation == Orientation.portrait
                                ? MediaQuery.sizeOf(context).width / 2.5
                                : MediaQuery.sizeOf(context).width / 4.5,
                            text: 'Facebook',
                            color: const Color(0xff3C5A9A),
                            icon: const FaIcon(
                              FontAwesomeIcons.facebookF,
                              size: 24,
                              color: Color(0xff3C5A9A),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          CustomButtonRegister(
                            width: orientation == Orientation.portrait
                                ? MediaQuery.sizeOf(context).width / 2.5
                                : MediaQuery.sizeOf(context).width / 4.5,
                            color: kRed,
                            text: 'Google',
                            icon: const FaIcon(
                              FontAwesomeIcons.googlePlusG,
                              size: 24,
                              color: kRed,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'لديك حساب بالفعل؟',
                              style: Styles.textStyle16,
                            ),
                            GestureDetector(
                              child: const Text(
                                '\u25B6 تسجيل الدخول',
                                style: Styles.textStyle16,
                              ),
                              onTap: () {
                                Navigator.pushNamed(context, LoginView.id);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
