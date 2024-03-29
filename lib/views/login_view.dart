import 'package:flutter/material.dart';
import 'package:selaty_app/views/change_password_view.dart';
import 'package:selaty_app/views/home_view.dart';
import 'package:selaty_app/views/register_view.dart';
import 'package:selaty_app/widgets/custom_app_bar.dart';
import 'package:selaty_app/widgets/custom_password_text_field.dart';
import 'package:selaty_app/widgets/styles.dart';

import '../constants.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);
  static const String id = 'LoginView';

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {

    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    double screenWidth = MediaQuery.sizeOf(context).width;


    return Scaffold(
      backgroundColor: const Color(0xffFDFDFF),
      appBar: const CustomAppBar(),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: isPortrait ? 20 : screenWidth / 4),
            child: Form(
              key: formKey,
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: isPortrait ? 50 : 0,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: isPortrait ? 30 : 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                'ســـــــــــلتي',
                                style: TextStyle(
                                  color: kRedText,
                                  fontSize: isPortrait ? 34 : 24,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'NotoKufiArabic',
                                ),
                              ),
                              Text(
                                'S    E    L    A    T    Y',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: isPortrait ? 18 : 12,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'assets/images/logo.png',
                            width: isPortrait ? 100 : 70,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: CustomTextField(
                      controller: emailController,
                      width: isPortrait ? screenWidth : screenWidth / 2,
                      text: 'عنوان البريد الالكتروني',
                      icon: const Icon(
                        Icons.check_circle_outline,
                        color: kGreen,
                        size: 24,
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
                      width: isPortrait ? screenWidth : screenWidth / 2,
                      text: 'كلمة السـر',
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, ChangePasswordView.id);
                      },
                      child: const Text(
                        'هل نسيت كلمة السـر',
                        style: Styles.textStyle16,
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: isPortrait ? 30 : 0,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: CustomButton(
                      height: isPortrait ? 50 : 40,
                      text: 'تسجيل الدخول',
                      color: kGreen,
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          Navigator.pushNamed(context, HomeView.id);
                        } else {}
                      },
                      width: isPortrait ? screenWidth : screenWidth / 2,
                    ),
                  ),
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'ليس لديك حساب؟',
                                style: Styles.textStyle16,
                              ),
                              GestureDetector(
                                child: const Text(
                                  'أنشئ حساب',
                                  style: Styles.textStyle16,
                                ),
                                onTap: () {
                                  Navigator.pushNamed(context, RegisterView.id);
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
