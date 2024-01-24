import 'package:flutter/material.dart';
import 'package:selaty_app/constants.dart';
import 'package:selaty_app/views/login_view.dart';
import 'package:selaty_app/views/register_view.dart';
import 'package:selaty_app/widgets/custom_button.dart';
import 'package:selaty_app/widgets/styles.dart';

class LoginOrSignupView extends StatelessWidget {
  const LoginOrSignupView({Key? key}) : super(key: key);
static const String id = 'LoginOrSignupView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                bottom:  -80,
                right: -60,
                child: Opacity(
                  opacity: 0.1,
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: orientation == Orientation.portrait ?  MediaQuery.of(context).size.width / 1.5: MediaQuery.of(context).size.height / 1.5,
                  ),
                ),
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/logo.png',
                            width: MediaQuery.of(context).size.width /
                                (orientation == Orientation.portrait ? 3.5 : 7),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                           Column(
                            children: [
                              const Text(
                                'ســـــــــــلتي',
                                style: Styles.textStyle40,
                              ),
                              Text(
                                'S    E    L    A    T    Y',
                                style: Styles.textStyle18.copyWith(
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      CustomButton(
                        text: 'تسجيل الدخول',
                        color: kRed,
                        width: orientation == Orientation.portrait ?  MediaQuery.of(context).size.width : MediaQuery.of(context).size.width / 2,
                        onTap: () {
                          Navigator.pushNamed(context, LoginView.id);
                        },
                      ),
                      CustomButton(
                        text: 'انشـئ حساب',
                        color: kGreen,
                        width: orientation == Orientation.portrait ?  MediaQuery.of(context).size.width  : MediaQuery.of(context).size.width /2,
                        onTap: () {
                          Navigator.pushNamed(context, RegisterView.id);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
