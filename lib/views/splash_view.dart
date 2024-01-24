import 'package:flutter/material.dart';
import 'package:selaty_app/views/onboarding_view.dart';

import '../widgets/styles.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);
  static const String id = 'SplashView';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushNamed(context, OnBoardingView.id);
      },
    );
  }

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
                bottom: -80,
                right: -60,
                child: Opacity(
                  opacity: 0.1,
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.width / 1.5
                        : MediaQuery.of(context).size.height / 1.5,
                  ),
                ),
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/logo.png',
                            width: MediaQuery.of(context).size.width /
                                (orientation == Orientation.portrait ? 2 : 7),
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
                                style: Styles.textStyle18
                                    .copyWith(fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Image.asset(
                            'assets/images/loading.gif',
                            width: MediaQuery.of(context).size.width /
                                (orientation == Orientation.portrait ? 5 : 10),
                          ),
                        ],
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
