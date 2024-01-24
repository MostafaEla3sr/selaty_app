import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:selaty_app/constants.dart';
import 'package:selaty_app/views/login_or_signup_view.dart';
import 'package:selaty_app/widgets/styles.dart';


class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);
  static const String id = 'OnBoardingView';

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
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
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: PageView.builder(
                    itemCount: onBoardList.length,
                    onPageChanged: (index) {
                      setState(() {
                        _pageIndex = index;
                      });
                      if (_pageIndex == 3) {
                        Navigator.pushNamed(context, LoginOrSignupView.id);
                      }

                    },
                    controller: _pageController,
                    itemBuilder: (context, index) => OnBoardContent(
                      i: _pageIndex,
                      controller: _pageController,
                      color: onBoardList[index].color,
                      image: onBoardList[index].image,
                      title: onBoardList[index].title,
                      description: onBoardList[index].description,
                    ),
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

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
    required this.color,
  });

  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isActive ? 18 : 6,
      width: 6,
      decoration: BoxDecoration(
        color: isActive ? color : color.withOpacity(0.4),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}

class OnBoard {
  final String image, title, description;

  final Color color;

  OnBoard(
      {required this.color,
      required this.image,
      required this.title,
      required this.description});
}

final List<OnBoard> onBoardList = [
  OnBoard(
      color: kRed,
      image: 'assets/images/shop.png',
      title: 'البحث بالقرب منك',
      description: 'ابحث عن المتاجر المفضلة التي تريدها بموقعك أو حيك'),
  OnBoard(
      color: kGreen,
      image: 'assets/images/shop.png',
      title: 'عروض طازجة وجودة',
      description: 'جميع العناصر لها نضارة حقيقية وهي مخصصة لاحتياجاتك'),
  OnBoard(
      color: kPurple,
      image: 'assets/images/delivery.png',
      title: 'تسليم سريع للمنزل',
      description: 'جميع العناصر لها نضارة حقيقية وهي مخصصة لاحتياجاتك'),
  OnBoard(color: Colors.white, image: 'assets/images/loading.gif', title: '', description: '',),
];

class OnBoardContent extends StatelessWidget {
  const OnBoardContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.color,
    required this.controller,
    required this.i,
  });

  final String image, title, description;

  final Color color;
  final PageController controller;
  final int i;

  @override
  Widget build(BuildContext context) {
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isPortrait ? const Spacer() : const SizedBox(height: 10,),
          CircleAvatar(
            backgroundColor: color.withOpacity(0.1),
            radius: isPortrait
                ? 130 : 85,
            child: CircleAvatar(
              backgroundColor: color.withOpacity(0.4),
              radius: isPortrait
                  ? 105 : 70,
              child: CircleAvatar(
                backgroundColor: color,
                radius: isPortrait
                    ? 80 : 55,
                child: SizedBox(
                  width: isPortrait
                      ? 90 : 60,
                  child: Image.asset(
                    image,
                  ),
                ),
              ),
            ),
          ),
           SizedBox(
            height: isPortrait
                ? 60 : 10,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              title,
              style: Styles.textStyle28.copyWith(
                color: color,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
           SizedBox(
            height: isPortrait
                ? 16 : 0,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              textDirection: TextDirection.rtl,
              description,
              style: Styles.textStyle20.copyWith(color: Colors.grey),
            ),
          ),
          //  SizedBox(
          //   height:  isPortrait
          //       ? 80 : 10,
          // ),
          isPortrait ? const Spacer() : const SizedBox(height: 10,),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                ),
                child: IconButton(
                   onPressed: () {
                    controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease);
                    },
                  icon: const FaIcon(
                    FontAwesomeIcons.arrowRightLong,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
              const Spacer(),
              ...List.generate(
                  onBoardList.length,
                  (index) => Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: DotIndicator(
                          color: onBoardList[index].color,
                          isActive: index == i,
                        ),
                      )),
            ],
          ),
          SizedBox(height : isPortrait
                  ? 20 : 10),
        ],
      ),
    );
  }
}
