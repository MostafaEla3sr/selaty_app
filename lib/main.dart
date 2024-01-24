import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:selaty_app/views/AllCategoriesView.dart';
import 'package:selaty_app/views/AllFruitsItemsView.dart';
import 'package:selaty_app/views/address_view.dart';
import 'package:selaty_app/views/change_password_view.dart';
import 'package:selaty_app/views/check_phone_number_view.dart';
import 'package:selaty_app/views/check_phone_view.dart';
import 'package:selaty_app/views/confirm_password_view.dart';
import 'package:selaty_app/views/empty_shopping_cart_view.dart';
import 'package:selaty_app/views/home_view.dart';
import 'package:selaty_app/views/login_or_signup_view.dart';
import 'package:selaty_app/views/login_view.dart';
import 'package:selaty_app/views/onboarding_view.dart';
import 'package:selaty_app/views/profile_view.dart';
import 'package:selaty_app/views/register_view.dart';
import 'package:selaty_app/views/shopping_cart_view.dart';
import 'package:selaty_app/views/splash_view.dart';
import 'package:selaty_app/views/successful_order_view.dart';
import 'package:selaty_app/views/track_order_view.dart';

import 'generated/l10n.dart';

void main() {
  // runApp(
  //   DevicePreview(
  //     builder: (context) => const SelatyApp(), // Wrap your app
  //   ),
  // );
  runApp(const SelatyApp());
}

class SelatyApp extends StatelessWidget {
  const SelatyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('ar'),
      localizationsDelegates: const[
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      // builder: DevicePreview.appBuilder,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade300,
        textTheme:const TextTheme(
          bodyLarge: TextStyle(
            fontFamily: 'Cairo',
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Cairo',
          ),bodySmall: TextStyle(
          fontFamily: 'Cairo',
        ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        LoginOrSignupView.id : (context)=>const LoginOrSignupView(),
        RegisterView.id : (context)=>const RegisterView(),
        LoginView.id : (context)=>const LoginView(),
        CheckPhoneNumberView.id : (context)=>const CheckPhoneNumberView(),
        CheckPhoneView.id : (context)=> CheckPhoneView(),
        ChangePasswordView.id : (context)=> const ChangePasswordView(),
        ConfirmPasswordView.id : (context)=> const ConfirmPasswordView(),
        SplashView.id : (context)=> const SplashView(),
        OnBoardingView.id : (context)=> const OnBoardingView(),
        HomeView.id : (context)=> const HomeView(),
        AllCategoriesView.id : (context)=> const AllCategoriesView(),
        AllFruitsItemsView.id : (context)=> const AllFruitsItemsView(),
        ShoppingCartView.id : (context)=> const ShoppingCartView(),
        EmptyShoppingCartView.id : (context)=> const EmptyShoppingCartView(),
        AddressView.id : (context)=> const AddressView(),
        ProfileView.id : (context)=> const ProfileView(),
        SuccessfulOrderView.id : (context)=> const SuccessfulOrderView(),
        TrackOrderView.id : (context)=> const TrackOrderView(),

      },
      initialRoute: SplashView.id,
    );
  }
}
bool isArabic(){
  return Intl.getCurrentLocale() == 'ar' ;
}