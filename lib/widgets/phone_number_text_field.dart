import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneNumberTextField extends StatelessWidget {
  const PhoneNumberTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return InternationalPhoneNumberInput(
      onInputChanged: (PhoneNumber number) {
        print(number.phoneNumber);
      },
      onInputValidated: (bool value) {
        print(value);
      },
      selectorConfig: const SelectorConfig(
        showFlags: true,
        useEmoji: false,
        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
        setSelectorButtonAsPrefixIcon: true,
        leadingPadding: 10,
        trailingSpace: false,
      ),
      ignoreBlank: false,
      autoValidateMode: AutovalidateMode.disabled,
      selectorTextStyle: const TextStyle(color: Colors.black),
      initialValue: PhoneNumber(isoCode: 'EG'),
      // textFieldController: controller,
      hintText: '   رقم الهاتف ',
      formatInput: true,
      keyboardType:
          const TextInputType.numberWithOptions(decimal: true),
      inputBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      onSaved: (PhoneNumber number) {
        print('On Saved: $number');
      },
    );
  }
}
