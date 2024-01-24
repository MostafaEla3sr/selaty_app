import 'package:flutter/material.dart';
import 'package:selaty_app/constants.dart';
import 'package:selaty_app/widgets/styles.dart';
import '../widgets/custom_app_bar.dart';

class CheckPhoneView extends StatefulWidget {
  CheckPhoneView({Key? key}) : super(key: key);
  static const String id = 'CheckPhoneView';

  @override
  State<CheckPhoneView> createState() => _CheckPhoneViewState();
}

class _CheckPhoneViewState extends State<CheckPhoneView> {
  List<TextEditingController> controllers =
      List.generate(4, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'التحقق من الهاتف'),
      backgroundColor: Colors.grey.shade200,
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
                   Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'أدخل رمز OTP الخاص بك هنا',
                      style: Styles.textStyle16.copyWith(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  // const Spacer(),
                  const SizedBox(
                    height: 40,
                  ),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        4,
                        (index) => SizedBox(
                          width: 70.0,
                          height: 70.0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: controllers[index].text.isNotEmpty
                                  ? kRed
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: TextField(
                              style: Styles.textStyle32.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                              ),
                              controller: controllers[index],
                              maxLength: 1,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                counterText: "",
                                border: InputBorder.none,
                              ),
                              onChanged: (value) {
                                if (value.length == 1) {
                                  if (index < 3) {
                                    FocusScope.of(context)
                                        .nextFocus(); // Move to the next text field
                                  } else {
                                    // The last digit has been entered, you can perform validation here
                                    String validationCode = controllers
                                        .map((controller) => controller.text)
                                        .join();
                                    print('Validation Code: $validationCode');
                                  }
                                }
                                setState(
                                    () {}); // Update the UI to reflect the color change
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 40,
                  ),
                   Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'لم يصل الكود ؟',
                      style: Styles.textStyle16.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                   Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'إعادة إرسال رمز جديد',
                      style: Styles.textStyle16.copyWith(
                        color: Colors.red,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
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
