import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:selaty_app/constants.dart';
import 'package:selaty_app/widgets/styles.dart';

import 'login_view.dart';

class ConfirmPasswordView extends StatelessWidget {
  const ConfirmPasswordView({Key? key}) : super(key: key);
  static const String id = 'ConfirmPasswordView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGreen,
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: orientation == Orientation.portrait
                  ? 20
                  : MediaQuery.sizeOf(context).width / 4,
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DottedBorder(
                    borderType: BorderType.Circle,
                    dashPattern: const [5, 5],
                    color: Colors.white,
                    strokeWidth: 2,
                    child: ClipOval(
                      child: Padding(
                        padding: const EdgeInsets.all(50),
                        child: Image.asset(
                          'assets/images/key.png',
                          width: orientation == Orientation.portrait ? 120 : 80,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: orientation == Orientation.portrait ? 40 : 10,
                  ),
                  const Text(
                    'كلمة المرور الخاصه بك لها',
                    style: Styles.textStyle22,
                  ),
                  SizedBox(
                    height: orientation == Orientation.portrait ? 40 : 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, LoginView.id);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width / 2,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'تم',
                            style: Styles.textStyle24.copyWith(
                              color: kRed,
                            ),
                          ),
                        ),
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
