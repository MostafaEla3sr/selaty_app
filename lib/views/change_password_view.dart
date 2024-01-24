import 'package:flutter/material.dart';
import 'package:selaty_app/views/confirm_password_view.dart';
import 'package:selaty_app/widgets/custom_text_field.dart';
import 'package:selaty_app/widgets/styles.dart';

import '../constants.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_button.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({Key? key}) : super(key: key);
  static const String id = 'ChangePasswordView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFDFDFF),
      appBar: const CustomAppBar(title: 'تغيير كلمة المرور'),
      body : OrientationBuilder(
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
                  child: SizedBox(height: MediaQuery.of(context).orientation ==
                      Orientation.portrait
                      ? 20
                      : 0,),
                ),
                 SliverToBoxAdapter(
                  child: Center(
                    child: Text(
                      'أدخل كلمة المرور الجديدة',
                      style: Styles.textStyle16.copyWith(color: Colors.grey),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(height: MediaQuery.of(context).orientation ==
                      Orientation.portrait
                      ? 20
                      : 10,),
                ),
                 SliverToBoxAdapter(
                  child: CustomTextField(
                    text: 'كلمة المرور الحالية',
                    isPassword: true,
                    icon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                      size: 28,
                    ),
                    width: orientation == Orientation.portrait
                        ? MediaQuery.sizeOf(context).width
                        : MediaQuery.sizeOf(context).width / 2,
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(height: MediaQuery.of(context).orientation ==
                      Orientation.portrait
                      ? 20
                      : 10,),
                ),
                SliverToBoxAdapter(
                  child: CustomTextField(
                    text: 'كلمة مرور جديدة',
                    isPassword: true,
                    icon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                      size: 28,
                    ),
                    width: orientation == Orientation.portrait
                        ? MediaQuery.sizeOf(context).width
                        : MediaQuery.sizeOf(context).width / 2,
                  ),
                ),
                const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 10,
                    )),


                SliverToBoxAdapter(
                  child: CustomButton(
                    height: MediaQuery.of(context).orientation ==
                        Orientation.portrait
                        ? 50
                        : 50,
                    text: 'تغيير',
                    color: kGreen,
                    onTap: () {
                      Navigator.pushNamed(context, ConfirmPasswordView.id);
                    },
                    width: orientation == Orientation.portrait
                        ? MediaQuery.sizeOf(context).width
                        : MediaQuery.sizeOf(context).width / 2,
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
