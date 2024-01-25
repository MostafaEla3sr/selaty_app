import 'package:flutter/material.dart';
import 'package:selaty_app/constants.dart';
import 'package:selaty_app/widgets/custom_app_bar.dart';
import 'package:selaty_app/widgets/custom_button.dart';
import 'package:selaty_app/widgets/custom_password_text_field.dart';
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
    bool isPortrait = MediaQuery.of(context).orientation ==
        Orientation.portrait;
    double screenWidth = MediaQuery.sizeOf(context).width;
    final TextEditingController emailController = TextEditingController();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    GlobalKey<FormState> formKey = GlobalKey();

    return Scaffold(
      backgroundColor: const Color(0xffFDFDFF),
      appBar: const CustomAppBar(),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal:
                isPortrait
                        ? 20
                        :screenWidth / 4),
            child: Form(
              key: formKey,
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: isPortrait
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
                      height: isPortrait
                          ? 20
                          : 10,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: CustomTextField(
                      controller: nameController,
                      width: isPortrait
                          ? screenWidth
                          : screenWidth / 2,

                      text: 'الاسم',
                    ),
                  ),
                  const SliverToBoxAdapter(
                      child: SizedBox(
                    height: 10,
                  )),
                  SliverToBoxAdapter(
                    child: CustomTextField(
                      controller: emailController,
                      width: isPortrait
                          ? screenWidth
                          : screenWidth / 2,

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
                    child: CustomPasswordTextFormField(
                      controller: passwordController,
                      width: isPortrait
                          ? screenWidth
                          : screenWidth / 2,

                      text: 'كلمة المرور',
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: isPortrait
                          ? 20
                          : 0,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: CustomButton(
                      height:isPortrait
                          ? 50
                          : 40,
                      text: 'اشتراك',
                      color: kGreen,
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          Navigator.pushNamed(context, CheckPhoneNumberView.id);

                        } else {
                        }
                      },
                      width:isPortrait
                          ? screenWidth
                          : screenWidth / 2,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: isPortrait
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
                              width: isPortrait
                                  ? screenWidth / 2.5
                                  : screenWidth / 4.5,
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
                              width: isPortrait
                                  ? screenWidth / 2.5
                                  : screenWidth / 4.5,
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
                                  'تسجيل الدخول',
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
            ),
          );
        },
      ),
    );
  }
}
