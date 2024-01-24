import 'package:flutter/material.dart';
import 'package:selaty_app/views/check_phone_view.dart';
import 'package:selaty_app/widgets/styles.dart';
import '../constants.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_button.dart';
import '../widgets/phone_number_text_field.dart';

class CheckPhoneNumberView extends StatelessWidget {
  const CheckPhoneNumberView({Key? key}) : super(key: key);
  static const String id = 'CheckNumberView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFDFDFF),
      appBar: CustomAppBar(title: 'تحقق من رقم الهاتف'),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: orientation == Orientation.portrait
                  ? 20
                  : MediaQuery.sizeOf(context).width / 4,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                   Text(
                    'لقد ارسلنا لك رسالة نصية قصيرة تحتوي على رمز إلى رقم 010000000000',
                    style: Styles.textStyle16.copyWith(color: Colors.grey),
                    textDirection: TextDirection.rtl,
                  ),
                  // const Spacer(),
                  const SizedBox(
                    height: 40,
                  ),

                  const PhoneNumberTextField(),

                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    height: 60,
                    text: 'تأكيد',
                    color: kGreen,
                    onTap: () {
                      Navigator.pushNamed(context, CheckPhoneView.id);
                    },
                    width:
                        MediaQuery.sizeOf(context).width
                        ,
                  ),
                  // const Spacer(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

