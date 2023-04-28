import 'package:flutter/material.dart';
import 'package:fruits_market/core/widgets/custome_buttons.dart';
import 'package:fruits_market/features/auth/login/login_page.dart';
import 'package:fruits_market/features/on_boarding/presentation/custom_page_view.dart';
import 'package:fruits_market/features/on_boarding/widgets/custom_dot_indicator.dart';
import 'package:get/get.dart';

import '../../../config/size_config.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: _pageController,
        ),
        Visibility(
          visible: _pageController!.hasClients
              ? (_pageController!.page == 2 ? false : true)
              : false,
          child: Positioned(
            right: 30,
            top: SizeConfig.defaultSize! * 8,
            child: InkWell(
                onTap: () {
                  if (_pageController!.page != 2) {
                    setState(() {
                      _pageController!.jumpToPage(2);
                    });
                  } else {
                    Get.to(() => const LoginView(),
                        transition: Transition.rightToLeft);
                  }
                },
                child: const Text('skip')),
          ),
        ),
        Positioned(
            right: 0,
            left: 0,
            bottom: SizeConfig.defaultSize! * 18,
            child: CustomDotsIndicator(
              dotIndex: _pageController!.hasClients ? _pageController!.page : 0,
            )),
        Positioned(
          bottom: SizeConfig.defaultSize! * 10,
          left: SizeConfig.defaultSize! * 12,
          right: SizeConfig.defaultSize! * 12,
          child: CustomGeneralButton(
            onPress: () {
              if (_pageController!.page != 2) {
                _pageController!.nextPage(
                    duration: const Duration(microseconds: 500),
                    curve: Curves.easeInBack);
              } else {
                Get.to(() => const LoginView(),
                    transition: Transition.rightToLeft);
              }
            },
            text: _pageController!.hasClients
                ? (_pageController!.page == 2 ? 'Get started' : 'Next')
                : 'Next',
          ),
        ),
      ],
    );
  }
}
